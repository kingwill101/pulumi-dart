import 'package:pulumi/pulumi.dart';
import 'get_kmssecret_args.dart';
import 'get_kmssecret_result.dart';

/// This data source allows you to use data encrypted with Google Cloud KMS
/// within your resource definitions.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/encrypt-decrypt).
///
/// > **NOTE:** Using this data provider will allow you to conceal secret data within your
/// resource definitions, but it does not take care of protecting that data in the
/// logging output, plan output, or state output.  Please take care to secure your secret
/// data outside of resource definitions.
///
/// ## Example Usage
///
/// First, create a KMS KeyRing and CryptoKey using the resource definitions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myKeyRing = new gcp.kms.KeyRing("my_key_ring", {
/// project: "my-project",
/// name: "my-key-ring",
/// location: "us-central1",
/// });
/// const myCryptoKey = new gcp.kms.CryptoKey("my_crypto_key", {
/// name: "my-crypto-key",
/// keyRing: myKeyRing.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_key_ring = gcp.kms.KeyRing("my_key_ring",
/// project="my-project",
/// name="my-key-ring",
/// location="us-central1")
/// my_crypto_key = gcp.kms.CryptoKey("my_crypto_key",
/// name="my-crypto-key",
/// key_ring=my_key_ring.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myKeyRing = new Gcp.Kms.KeyRing("my_key_ring", new()
/// {
/// Project = "my-project",
/// Name = "my-key-ring",
/// Location = "us-central1",
/// });
///
/// var myCryptoKey = new Gcp.Kms.CryptoKey("my_crypto_key", new()
/// {
/// Name = "my-crypto-key",
/// KeyRing = myKeyRing.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myKeyRing, err := kms.NewKeyRing(ctx, "my_key_ring", &kms.KeyRingArgs{
/// Project:  pulumi.String("my-project"),
/// Name:     pulumi.String("my-key-ring"),
/// Location: pulumi.String("us-central1"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = kms.NewCryptoKey(ctx, "my_crypto_key", &kms.CryptoKeyArgs{
/// Name:    pulumi.String("my-crypto-key"),
/// KeyRing: myKeyRing.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var myKeyRing = new KeyRing("myKeyRing", KeyRingArgs.builder()
/// .project("my-project")
/// .name("my-key-ring")
/// .location("us-central1")
/// .build());
///
/// var myCryptoKey = new CryptoKey("myCryptoKey", CryptoKeyArgs.builder()
/// .name("my-crypto-key")
/// .keyRing(myKeyRing.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myKeyRing:
/// type: gcp:kms:KeyRing
/// name: my_key_ring
/// properties:
/// project: my-project
/// name: my-key-ring
/// location: us-central1
/// myCryptoKey:
/// type: gcp:kms:CryptoKey
/// name: my_crypto_key
/// properties:
/// name: my-crypto-key
/// keyRing: ${myKeyRing.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Next, use the [Cloud SDK](https://cloud.google.com/sdk/gcloud/reference/kms/encrypt) to encrypt some
/// sensitive information:
///
/// ```bash
/// $ echo -n my-secret-password | gcloud kms encrypt \
/// > --project my-project \
/// > --location us-central1 \
/// > --keyring my-key-ring \
/// > --key my-crypto-key \
/// > --plaintext-file - \
/// > --ciphertext-file - \
/// > | base64
/// CiQAqD+xX4SXOSziF4a8JYvq4spfAuWhhYSNul33H85HnVtNQW4SOgDu2UZ46dQCRFl5MF6ekabviN8xq+F+2035ZJ85B+xTYXqNf4mZs0RJitnWWuXlYQh6axnnJYu3kDU=
/// ```
///
/// Finally, reference the encrypted ciphertext in your resource definitions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const sqlUserPassword = gcp.kms.getKMSSecret({
/// cryptoKey: myCryptoKey.id,
/// ciphertext: "CiQAqD+xX4SXOSziF4a8JYvq4spfAuWhhYSNul33H85HnVtNQW4SOgDu2UZ46dQCRFl5MF6ekabviN8xq+F+2035ZJ85B+xTYXqNf4mZs0RJitnWWuXlYQh6axnnJYu3kDU=",
/// });
/// const dbNameSuffix = new random.index.Id("db_name_suffix", {byteLength: 4});
/// const main = new gcp.sql.DatabaseInstance("main", {
/// name: `main-instance-${dbNameSuffix.hex}`,
/// databaseVersion: "MYSQL_5_7",
/// settings: {
/// tier: "db-f1-micro",
/// },
/// });
/// const users = new gcp.sql.User("users", {
/// name: "me",
/// instance: main.name,
/// host: "me.com",
/// password: sqlUserPassword.then(sqlUserPassword => sqlUserPassword.plaintext),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
///
/// sql_user_password = gcp.kms.get_kms_secret(crypto_key=my_crypto_key["id"],
/// ciphertext="CiQAqD+xX4SXOSziF4a8JYvq4spfAuWhhYSNul33H85HnVtNQW4SOgDu2UZ46dQCRFl5MF6ekabviN8xq+F+2035ZJ85B+xTYXqNf4mZs0RJitnWWuXlYQh6axnnJYu3kDU=")
/// db_name_suffix = random.index.Id("db_name_suffix", byte_length=4)
/// main = gcp.sql.DatabaseInstance("main",
/// name=f"main-instance-{db_name_suffix['hex']}",
/// database_version="MYSQL_5_7",
/// settings={
/// "tier": "db-f1-micro",
/// })
/// users = gcp.sql.User("users",
/// name="me",
/// instance=main.name,
/// host="me.com",
/// password=sql_user_password.plaintext)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var sqlUserPassword = Gcp.Kms.GetKMSSecret.Invoke(new()
/// {
/// CryptoKey = myCryptoKey.Id,
/// Ciphertext = "CiQAqD+xX4SXOSziF4a8JYvq4spfAuWhhYSNul33H85HnVtNQW4SOgDu2UZ46dQCRFl5MF6ekabviN8xq+F+2035ZJ85B+xTYXqNf4mZs0RJitnWWuXlYQh6axnnJYu3kDU=",
/// });
///
/// var dbNameSuffix = new Random.Index.Id("db_name_suffix", new()
/// {
/// ByteLength = 4,
/// });
///
/// var main = new Gcp.Sql.DatabaseInstance("main", new()
/// {
/// Name = $"main-instance-{dbNameSuffix.Hex}",
/// DatabaseVersion = "MYSQL_5_7",
/// Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
/// {
/// Tier = "db-f1-micro",
/// },
/// });
///
/// var users = new Gcp.Sql.User("users", new()
/// {
/// Name = "me",
/// Instance = main.Name,
/// Host = "me.com",
/// Password = sqlUserPassword.Apply(getKMSSecretResult => getKMSSecretResult.Plaintext),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// "github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// sqlUserPassword, err := kms.GetKMSSecret(ctx, &kms.GetKMSSecretArgs{
/// CryptoKey:  myCryptoKey.Id,
/// Ciphertext: "CiQAqD+xX4SXOSziF4a8JYvq4spfAuWhhYSNul33H85HnVtNQW4SOgDu2UZ46dQCRFl5MF6ekabviN8xq+F+2035ZJ85B+xTYXqNf4mZs0RJitnWWuXlYQh6axnnJYu3kDU=",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// dbNameSuffix, err := random.NewId(ctx, "db_name_suffix", &random.IdArgs{
/// ByteLength: 4,
/// })
/// if err != nil {
/// return err
/// }
/// main, err := sql.NewDatabaseInstance(ctx, "main", &sql.DatabaseInstanceArgs{
/// Name:            pulumi.Sprintf("main-instance-%v", dbNameSuffix.Hex),
/// DatabaseVersion: pulumi.String("MYSQL_5_7"),
/// Settings: &sql.DatabaseInstanceSettingsArgs{
/// Tier: pulumi.String("db-f1-micro"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = sql.NewUser(ctx, "users", &sql.UserArgs{
/// Name:     pulumi.String("me"),
/// Instance: main.Name,
/// Host:     pulumi.String("me.com"),
/// Password: pulumi.String(sqlUserPassword.Plaintext),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKMSSecretArgs;
/// import com.pulumi.random.Id;
/// import com.pulumi.random.IdArgs;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var sqlUserPassword = KmsFunctions.getKMSSecret(GetKMSSecretArgs.builder()
/// .cryptoKey(myCryptoKey.id())
/// .ciphertext("CiQAqD+xX4SXOSziF4a8JYvq4spfAuWhhYSNul33H85HnVtNQW4SOgDu2UZ46dQCRFl5MF6ekabviN8xq+F+2035ZJ85B+xTYXqNf4mZs0RJitnWWuXlYQh6axnnJYu3kDU=")
/// .build());
///
/// var dbNameSuffix = new Id("dbNameSuffix", IdArgs.builder()
/// .byteLength(4)
/// .build());
///
/// var main = new DatabaseInstance("main", DatabaseInstanceArgs.builder()
/// .name(String.format("main-instance-%s", dbNameSuffix.hex()))
/// .databaseVersion("MYSQL_5_7")
/// .settings(DatabaseInstanceSettingsArgs.builder()
/// .tier("db-f1-micro")
/// .build())
/// .build());
///
/// var users = new User("users", UserArgs.builder()
/// .name("me")
/// .instance(main.name())
/// .host("me.com")
/// .password(sqlUserPassword.plaintext())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dbNameSuffix:
/// type: random:Id
/// name: db_name_suffix
/// properties:
/// byteLength: 4
/// main:
/// type: gcp:sql:DatabaseInstance
/// properties:
/// name: main-instance-${dbNameSuffix.hex}
/// databaseVersion: MYSQL_5_7
/// settings:
/// tier: db-f1-micro
/// users:
/// type: gcp:sql:User
/// properties:
/// name: me
/// instance: ${main.name}
/// host: me.com
/// password: ${sqlUserPassword.plaintext}
/// variables:
/// sqlUserPassword:
/// fn::invoke:
/// function: gcp:kms:getKMSSecret
/// arguments:
/// cryptoKey: ${myCryptoKey.id}
/// ciphertext: CiQAqD+xX4SXOSziF4a8JYvq4spfAuWhhYSNul33H85HnVtNQW4SOgDu2UZ46dQCRFl5MF6ekabviN8xq+F+2035ZJ85B+xTYXqNf4mZs0RJitnWWuXlYQh6axnnJYu3kDU=
/// ```
/// <!--End PulumiCodeChooser -->
///
/// This will result in a Cloud SQL user being created with password `my-secret-password`.
Future<GetKMSSecretResult> getKMSSecret(
  GetKMSSecretArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKMSSecret:getKMSSecret',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetKMSSecretResult.fromMap(result);
}
