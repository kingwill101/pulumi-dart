import 'package:pulumi/pulumi.dart';
import 'get_project_service_account_args2.dart';
import 'get_project_service_account_result2.dart';

/// Get the email address of a project's unique [automatic Google Cloud Storage service account](https://cloud.google.com/storage/docs/projects#service-accounts).
///
/// For each Google Cloud project, Google maintains a unique service account which
/// is used as the identity for various Google Cloud Storage operations, including
/// operations involving
/// [customer-managed encryption keys](https://cloud.google.com/storage/docs/encryption/customer-managed-keys)
/// and those involving
/// [storage notifications to pub/sub](https://cloud.google.com/storage/docs/gsutil/commands/notification).
/// This automatic Google service account requires access to the relevant Cloud KMS keys or pub/sub topics, respectively, in order for Cloud Storage to use
/// these customer-managed resources.
///
/// The service account has a well-known, documented naming format which is parameterised on the numeric Google project ID.
/// However, as noted in [the docs](https://cloud.google.com/storage/docs/projects#service-accounts), it is only created when certain relevant actions occur which
/// presuppose its existence.
/// These actions include calling a [Cloud Storage API endpoint](https://cloud.google.com/storage/docs/json_api/v1/projects/serviceAccount/get) to yield the
/// service account's identity, or performing some operations in the UI which must use the service account's identity, such as attempting to list Cloud KMS keys
/// on the bucket creation page.
///
/// Use of this data source calls the relevant API endpoint to obtain the service account's identity and thus ensures it exists prior to any API operations
/// which demand its existence, such as specifying it in Cloud IAM policy.
/// Always prefer to use this data source over interpolating the project ID into the well-known format for this service account, as the latter approach may cause
/// provider update errors in cases where the service account does not yet exist.
///
/// >  When you write provider code which uses features depending on this service account *and* your provider code adds the service account in IAM policy on other resources,
/// you must take care for race conditions between the establishment of the IAM policy and creation of the relevant Cloud Storage resource.
/// Cloud Storage APIs will require permissions on resources such as pub/sub topics or Cloud KMS keys to exist *before* the attempt to utilise them in a
/// bucket configuration, otherwise the API calls will fail.
/// You may need to use <span pulumi-lang-nodejs="`dependsOn`" pulumi-lang-dotnet="`DependsOn`" pulumi-lang-go="`dependsOn`" pulumi-lang-python="`depends_on`" pulumi-lang-yaml="`dependsOn`" pulumi-lang-java="`dependsOn`">`depends_on`</span> to create an explicit dependency between the IAM policy resource and the Cloud Storage resource which depends on it.
/// See the examples here and in the <span pulumi-lang-nodejs="`gcp.storage.Notification`" pulumi-lang-dotnet="`gcp.storage.Notification`" pulumi-lang-go="`storage.Notification`" pulumi-lang-python="`storage.Notification`" pulumi-lang-yaml="`gcp.storage.Notification`" pulumi-lang-java="`gcp.storage.Notification`">`gcp.storage.Notification`</span> resource.
///
/// For more information see
/// [the API reference](https://cloud.google.com/storage/docs/json_api/v1/projects/serviceAccount).
///
/// ## Example Usage
///
/// ### Pub/Sub Notifications
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const gcsAccount = gcp.storage.getProjectServiceAccount({});
/// const binding = new gcp.pubsub.TopicIAMBinding("binding", {
/// topic: topic.name,
/// role: "roles/pubsub.publisher",
/// members: [gcsAccount.then(gcsAccount => `serviceAccount:${gcsAccount.emailAddress}`)],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// gcs_account = gcp.storage.get_project_service_account()
/// binding = gcp.pubsub.TopicIAMBinding("binding",
/// topic=topic["name"],
/// role="roles/pubsub.publisher",
/// members=[f"serviceAccount:{gcs_account.email_address}"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var gcsAccount = Gcp.Storage.GetProjectServiceAccount.Invoke();
///
/// var binding = new Gcp.PubSub.TopicIAMBinding("binding", new()
/// {
/// Topic = topic.Name,
/// Role = "roles/pubsub.publisher",
/// Members = new[]
/// {
/// $"serviceAccount:{gcsAccount.Apply(getProjectServiceAccountResult => getProjectServiceAccountResult.EmailAddress)}",
/// },
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// gcsAccount, err := storage.GetProjectServiceAccount(ctx, &storage.GetProjectServiceAccountArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = pubsub.NewTopicIAMBinding(ctx, "binding", &pubsub.TopicIAMBindingArgs{
/// Topic: pulumi.Any(topic.Name),
/// Role:  pulumi.String("roles/pubsub.publisher"),
/// Members: pulumi.StringArray{
/// pulumi.Sprintf("serviceAccount:%v", gcsAccount.EmailAddress),
/// },
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
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetProjectServiceAccountArgs;
/// import com.pulumi.gcp.pubsub.TopicIAMBinding;
/// import com.pulumi.gcp.pubsub.TopicIAMBindingArgs;
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
/// final var gcsAccount = StorageFunctions.getProjectServiceAccount(GetProjectServiceAccountArgs.builder()
/// .build());
///
/// var binding = new TopicIAMBinding("binding", TopicIAMBindingArgs.builder()
/// .topic(topic.name())
/// .role("roles/pubsub.publisher")
/// .members(String.format("serviceAccount:%s", gcsAccount.emailAddress()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:pubsub:TopicIAMBinding
/// properties:
/// topic: ${topic.name}
/// role: roles/pubsub.publisher
/// members:
/// - serviceAccount:${gcsAccount.emailAddress}
/// variables:
/// gcsAccount:
/// fn::invoke:
/// function: gcp:storage:getProjectServiceAccount
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ### Cloud KMS Keys
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const gcsAccount = gcp.storage.getProjectServiceAccount({});
/// const binding = new gcp.kms.CryptoKeyIAMBinding("binding", {
/// cryptoKeyId: "your-crypto-key-id",
/// role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// members: [gcsAccount.then(gcsAccount => `serviceAccount:${gcsAccount.emailAddress}`)],
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
/// name: "kms-protected-bucket",
/// location: "US",
/// encryption: {
/// defaultKmsKeyName: "your-crypto-key-id",
/// },
/// }, {
/// dependsOn: [binding],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// gcs_account = gcp.storage.get_project_service_account()
/// binding = gcp.kms.CryptoKeyIAMBinding("binding",
/// crypto_key_id="your-crypto-key-id",
/// role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// members=[f"serviceAccount:{gcs_account.email_address}"])
/// bucket = gcp.storage.Bucket("bucket",
/// name="kms-protected-bucket",
/// location="US",
/// encryption={
/// "default_kms_key_name": "your-crypto-key-id",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[binding]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var gcsAccount = Gcp.Storage.GetProjectServiceAccount.Invoke();
///
/// var binding = new Gcp.Kms.CryptoKeyIAMBinding("binding", new()
/// {
/// CryptoKeyId = "your-crypto-key-id",
/// Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// Members = new[]
/// {
/// $"serviceAccount:{gcsAccount.Apply(getProjectServiceAccountResult => getProjectServiceAccountResult.EmailAddress)}",
/// },
/// });
///
/// var bucket = new Gcp.Storage.Bucket("bucket", new()
/// {
/// Name = "kms-protected-bucket",
/// Location = "US",
/// Encryption = new Gcp.Storage.Inputs.BucketEncryptionArgs
/// {
/// DefaultKmsKeyName = "your-crypto-key-id",
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// binding,
/// },
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// gcsAccount, err := storage.GetProjectServiceAccount(ctx, &storage.GetProjectServiceAccountArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// binding, err := kms.NewCryptoKeyIAMBinding(ctx, "binding", &kms.CryptoKeyIAMBindingArgs{
/// CryptoKeyId: pulumi.String("your-crypto-key-id"),
/// Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// Members: pulumi.StringArray{
/// pulumi.Sprintf("serviceAccount:%v", gcsAccount.EmailAddress),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// Name:     pulumi.String("kms-protected-bucket"),
/// Location: pulumi.String("US"),
/// Encryption: &storage.BucketEncryptionArgs{
/// DefaultKmsKeyName: pulumi.String("your-crypto-key-id"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// binding,
/// }))
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
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetProjectServiceAccountArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMBinding;
/// import com.pulumi.gcp.kms.CryptoKeyIAMBindingArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.inputs.BucketEncryptionArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// final var gcsAccount = StorageFunctions.getProjectServiceAccount(GetProjectServiceAccountArgs.builder()
/// .build());
///
/// var binding = new CryptoKeyIAMBinding("binding", CryptoKeyIAMBindingArgs.builder()
/// .cryptoKeyId("your-crypto-key-id")
/// .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
/// .members(String.format("serviceAccount:%s", gcsAccount.emailAddress()))
/// .build());
///
/// var bucket = new Bucket("bucket", BucketArgs.builder()
/// .name("kms-protected-bucket")
/// .location("US")
/// .encryption(BucketEncryptionArgs.builder()
/// .defaultKmsKeyName("your-crypto-key-id")
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(binding)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:kms:CryptoKeyIAMBinding
/// properties:
/// cryptoKeyId: your-crypto-key-id
/// role: roles/cloudkms.cryptoKeyEncrypterDecrypter
/// members:
/// - serviceAccount:${gcsAccount.emailAddress}
/// bucket:
/// type: gcp:storage:Bucket
/// properties:
/// name: kms-protected-bucket
/// location: US
/// encryption:
/// defaultKmsKeyName: your-crypto-key-id
/// options:
/// dependsOn:
/// - ${binding}
/// variables:
/// gcsAccount:
/// fn::invoke:
/// function: gcp:storage:getProjectServiceAccount
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetProjectServiceAccountResult2> getProjectServiceAccount2(
  GetProjectServiceAccountArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getProjectServiceAccount:getProjectServiceAccount',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProjectServiceAccountResult2.fromMap(result);
}
