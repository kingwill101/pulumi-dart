import 'package:pulumi/pulumi.dart';
import '../crypto_key_iammember_condition/crypto_key_iammember_condition.dart';
import 'crypto_key_iammember_args.dart';

/// Three different resources help you manage your IAM policy for KMS crypto key. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.kms.CryptoKeyIAMPolicy`" pulumi-lang-dotnet="`gcp.kms.CryptoKeyIAMPolicy`" pulumi-lang-go="`kms.CryptoKeyIAMPolicy`" pulumi-lang-python="`kms.CryptoKeyIAMPolicy`" pulumi-lang-yaml="`gcp.kms.CryptoKeyIAMPolicy`" pulumi-lang-java="`gcp.kms.CryptoKeyIAMPolicy`">`gcp.kms.CryptoKeyIAMPolicy`</span>: Authoritative. Sets the IAM policy for the crypto key and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.kms.CryptoKeyIAMBinding`" pulumi-lang-dotnet="`gcp.kms.CryptoKeyIAMBinding`" pulumi-lang-go="`kms.CryptoKeyIAMBinding`" pulumi-lang-python="`kms.CryptoKeyIAMBinding`" pulumi-lang-yaml="`gcp.kms.CryptoKeyIAMBinding`" pulumi-lang-java="`gcp.kms.CryptoKeyIAMBinding`">`gcp.kms.CryptoKeyIAMBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the crypto key are preserved.
/// * <span pulumi-lang-nodejs="`gcp.kms.CryptoKeyIAMMember`" pulumi-lang-dotnet="`gcp.kms.CryptoKeyIAMMember`" pulumi-lang-go="`kms.CryptoKeyIAMMember`" pulumi-lang-python="`kms.CryptoKeyIAMMember`" pulumi-lang-yaml="`gcp.kms.CryptoKeyIAMMember`" pulumi-lang-java="`gcp.kms.CryptoKeyIAMMember`">`gcp.kms.CryptoKeyIAMMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the crypto key are preserved.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.kms.CryptoKeyIAMPolicy`" pulumi-lang-dotnet="`gcp.kms.CryptoKeyIAMPolicy`" pulumi-lang-go="`kms.CryptoKeyIAMPolicy`" pulumi-lang-python="`kms.CryptoKeyIAMPolicy`" pulumi-lang-yaml="`gcp.kms.CryptoKeyIAMPolicy`" pulumi-lang-java="`gcp.kms.CryptoKeyIAMPolicy`">`gcp.kms.CryptoKeyIAMPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.kms.CryptoKeyIAMBinding`" pulumi-lang-dotnet="`gcp.kms.CryptoKeyIAMBinding`" pulumi-lang-go="`kms.CryptoKeyIAMBinding`" pulumi-lang-python="`kms.CryptoKeyIAMBinding`" pulumi-lang-yaml="`gcp.kms.CryptoKeyIAMBinding`" pulumi-lang-java="`gcp.kms.CryptoKeyIAMBinding`">`gcp.kms.CryptoKeyIAMBinding`</span> and <span pulumi-lang-nodejs="`gcp.kms.CryptoKeyIAMMember`" pulumi-lang-dotnet="`gcp.kms.CryptoKeyIAMMember`" pulumi-lang-go="`kms.CryptoKeyIAMMember`" pulumi-lang-python="`kms.CryptoKeyIAMMember`" pulumi-lang-yaml="`gcp.kms.CryptoKeyIAMMember`" pulumi-lang-java="`gcp.kms.CryptoKeyIAMMember`">`gcp.kms.CryptoKeyIAMMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.kms.CryptoKeyIAMBinding`" pulumi-lang-dotnet="`gcp.kms.CryptoKeyIAMBinding`" pulumi-lang-go="`kms.CryptoKeyIAMBinding`" pulumi-lang-python="`kms.CryptoKeyIAMBinding`" pulumi-lang-yaml="`gcp.kms.CryptoKeyIAMBinding`" pulumi-lang-java="`gcp.kms.CryptoKeyIAMBinding`">`gcp.kms.CryptoKeyIAMBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.kms.CryptoKeyIAMMember`" pulumi-lang-dotnet="`gcp.kms.CryptoKeyIAMMember`" pulumi-lang-go="`kms.CryptoKeyIAMMember`" pulumi-lang-python="`kms.CryptoKeyIAMMember`" pulumi-lang-yaml="`gcp.kms.CryptoKeyIAMMember`" pulumi-lang-java="`gcp.kms.CryptoKeyIAMMember`">`gcp.kms.CryptoKeyIAMMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyring = new gcp.kms.KeyRing("keyring", {
/// name: "keyring-example",
/// location: "global",
/// });
/// const key = new gcp.kms.CryptoKey("key", {
/// name: "crypto-key-example",
/// keyRing: keyring.id,
/// rotationPeriod: "7776000s",
/// });
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/cloudkms.cryptoKeyEncrypter",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const cryptoKey = new gcp.kms.CryptoKeyIAMPolicy("crypto_key", {
/// cryptoKeyId: key.id,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// keyring = gcp.kms.KeyRing("keyring",
/// name="keyring-example",
/// location="global")
/// key = gcp.kms.CryptoKey("key",
/// name="crypto-key-example",
/// key_ring=keyring.id,
/// rotation_period="7776000s")
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/cloudkms.cryptoKeyEncrypter",
/// "members": ["user:jane@example.com"],
/// }])
/// crypto_key = gcp.kms.CryptoKeyIAMPolicy("crypto_key",
/// crypto_key_id=key.id,
/// policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var keyring = new Gcp.Kms.KeyRing("keyring", new()
/// {
/// Name = "keyring-example",
/// Location = "global",
/// });
///
/// var key = new Gcp.Kms.CryptoKey("key", new()
/// {
/// Name = "crypto-key-example",
/// KeyRing = keyring.Id,
/// RotationPeriod = "7776000s",
/// });
///
/// var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
/// {
/// Bindings = new[]
/// {
/// new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
/// {
/// Role = "roles/cloudkms.cryptoKeyEncrypter",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var cryptoKey = new Gcp.Kms.CryptoKeyIAMPolicy("crypto_key", new()
/// {
/// CryptoKeyId = key.Id,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// keyring, err := kms.NewKeyRing(ctx, "keyring", &kms.KeyRingArgs{
/// Name:     pulumi.String("keyring-example"),
/// Location: pulumi.String("global"),
/// })
/// if err != nil {
/// return err
/// }
/// key, err := kms.NewCryptoKey(ctx, "key", &kms.CryptoKeyArgs{
/// Name:           pulumi.String("crypto-key-example"),
/// KeyRing:        keyring.ID(),
/// RotationPeriod: pulumi.String("7776000s"),
/// })
/// if err != nil {
/// return err
/// }
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/cloudkms.cryptoKeyEncrypter",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = kms.NewCryptoKeyIAMPolicy(ctx, "crypto_key", &kms.CryptoKeyIAMPolicyArgs{
/// CryptoKeyId: key.ID(),
/// PolicyData:  pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMPolicy;
/// import com.pulumi.gcp.kms.CryptoKeyIAMPolicyArgs;
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
/// var keyring = new KeyRing("keyring", KeyRingArgs.builder()
/// .name("keyring-example")
/// .location("global")
/// .build());
///
/// var key = new CryptoKey("key", CryptoKeyArgs.builder()
/// .name("crypto-key-example")
/// .keyRing(keyring.id())
/// .rotationPeriod("7776000s")
/// .build());
///
/// final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
/// .bindings(GetIAMPolicyBindingArgs.builder()
/// .role("roles/cloudkms.cryptoKeyEncrypter")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var cryptoKey = new CryptoKeyIAMPolicy("cryptoKey", CryptoKeyIAMPolicyArgs.builder()
/// .cryptoKeyId(key.id())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// keyring:
/// type: gcp:kms:KeyRing
/// properties:
/// name: keyring-example
/// location: global
/// key:
/// type: gcp:kms:CryptoKey
/// properties:
/// name: crypto-key-example
/// keyRing: ${keyring.id}
/// rotationPeriod: 7776000s
/// cryptoKey:
/// type: gcp:kms:CryptoKeyIAMPolicy
/// name: crypto_key
/// properties:
/// cryptoKeyId: ${key.id}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/cloudkms.cryptoKeyEncrypter
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With IAM Conditions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/cloudkms.cryptoKeyEncrypter",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/cloudkms.cryptoKeyEncrypter",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
/// {
/// Bindings = new[]
/// {
/// new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
/// {
/// Role = "roles/cloudkms.cryptoKeyEncrypter",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Organizations.Inputs.GetIAMPolicyBindingConditionInputArgs
/// {
/// Title = "expires_after_2019_12_31",
/// Description = "Expiring at midnight of 2019-12-31",
/// Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/cloudkms.cryptoKeyEncrypter",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// Condition: {
/// Title:       "expires_after_2019_12_31",
/// Description: pulumi.StringRef("Expiring at midnight of 2019-12-31"),
/// Expression:  "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// },
/// },
/// }, nil)
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
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
/// final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
/// .bindings(GetIAMPolicyBindingArgs.builder()
/// .role("roles/cloudkms.cryptoKeyEncrypter")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/cloudkms.cryptoKeyEncrypter
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cryptoKey = new gcp.kms.CryptoKeyIAMBinding("crypto_key", {
/// cryptoKeyId: key.id,
/// role: "roles/cloudkms.cryptoKeyEncrypter",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// crypto_key = gcp.kms.CryptoKeyIAMBinding("crypto_key",
/// crypto_key_id=key["id"],
/// role="roles/cloudkms.cryptoKeyEncrypter",
/// members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var cryptoKey = new Gcp.Kms.CryptoKeyIAMBinding("crypto_key", new()
/// {
/// CryptoKeyId = key.Id,
/// Role = "roles/cloudkms.cryptoKeyEncrypter",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
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
/// _, err := kms.NewCryptoKeyIAMBinding(ctx, "crypto_key", &kms.CryptoKeyIAMBindingArgs{
/// CryptoKeyId: pulumi.Any(key.Id),
/// Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypter"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.kms.CryptoKeyIAMBinding;
/// import com.pulumi.gcp.kms.CryptoKeyIAMBindingArgs;
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
/// var cryptoKey = new CryptoKeyIAMBinding("cryptoKey", CryptoKeyIAMBindingArgs.builder()
/// .cryptoKeyId(key.id())
/// .role("roles/cloudkms.cryptoKeyEncrypter")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cryptoKey:
/// type: gcp:kms:CryptoKeyIAMBinding
/// name: crypto_key
/// properties:
/// cryptoKeyId: ${key.id}
/// role: roles/cloudkms.cryptoKeyEncrypter
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With IAM Conditions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cryptoKey = new gcp.kms.CryptoKeyIAMBinding("crypto_key", {
/// cryptoKeyId: key.id,
/// role: "roles/cloudkms.cryptoKeyEncrypter",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// crypto_key = gcp.kms.CryptoKeyIAMBinding("crypto_key",
/// crypto_key_id=key["id"],
/// role="roles/cloudkms.cryptoKeyEncrypter",
/// members=["user:jane@example.com"],
/// condition={
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var cryptoKey = new Gcp.Kms.CryptoKeyIAMBinding("crypto_key", new()
/// {
/// CryptoKeyId = key.Id,
/// Role = "roles/cloudkms.cryptoKeyEncrypter",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Kms.Inputs.CryptoKeyIAMBindingConditionArgs
/// {
/// Title = "expires_after_2019_12_31",
/// Description = "Expiring at midnight of 2019-12-31",
/// Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
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
/// _, err := kms.NewCryptoKeyIAMBinding(ctx, "crypto_key", &kms.CryptoKeyIAMBindingArgs{
/// CryptoKeyId: pulumi.Any(key.Id),
/// Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypter"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &kms.CryptoKeyIAMBindingConditionArgs{
/// Title:       pulumi.String("expires_after_2019_12_31"),
/// Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// import com.pulumi.gcp.kms.CryptoKeyIAMBinding;
/// import com.pulumi.gcp.kms.CryptoKeyIAMBindingArgs;
/// import com.pulumi.gcp.kms.inputs.CryptoKeyIAMBindingConditionArgs;
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
/// var cryptoKey = new CryptoKeyIAMBinding("cryptoKey", CryptoKeyIAMBindingArgs.builder()
/// .cryptoKeyId(key.id())
/// .role("roles/cloudkms.cryptoKeyEncrypter")
/// .members("user:jane@example.com")
/// .condition(CryptoKeyIAMBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cryptoKey:
/// type: gcp:kms:CryptoKeyIAMBinding
/// name: crypto_key
/// properties:
/// cryptoKeyId: ${key.id}
/// role: roles/cloudkms.cryptoKeyEncrypter
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cryptoKey = new gcp.kms.CryptoKeyIAMMember("crypto_key", {
/// cryptoKeyId: key.id,
/// role: "roles/cloudkms.cryptoKeyEncrypter",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// crypto_key = gcp.kms.CryptoKeyIAMMember("crypto_key",
/// crypto_key_id=key["id"],
/// role="roles/cloudkms.cryptoKeyEncrypter",
/// member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var cryptoKey = new Gcp.Kms.CryptoKeyIAMMember("crypto_key", new()
/// {
/// CryptoKeyId = key.Id,
/// Role = "roles/cloudkms.cryptoKeyEncrypter",
/// Member = "user:jane@example.com",
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
/// _, err := kms.NewCryptoKeyIAMMember(ctx, "crypto_key", &kms.CryptoKeyIAMMemberArgs{
/// CryptoKeyId: pulumi.Any(key.Id),
/// Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypter"),
/// Member:      pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
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
/// var cryptoKey = new CryptoKeyIAMMember("cryptoKey", CryptoKeyIAMMemberArgs.builder()
/// .cryptoKeyId(key.id())
/// .role("roles/cloudkms.cryptoKeyEncrypter")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cryptoKey:
/// type: gcp:kms:CryptoKeyIAMMember
/// name: crypto_key
/// properties:
/// cryptoKeyId: ${key.id}
/// role: roles/cloudkms.cryptoKeyEncrypter
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With IAM Conditions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cryptoKey = new gcp.kms.CryptoKeyIAMMember("crypto_key", {
/// cryptoKeyId: key.id,
/// role: "roles/cloudkms.cryptoKeyEncrypter",
/// member: "user:jane@example.com",
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// crypto_key = gcp.kms.CryptoKeyIAMMember("crypto_key",
/// crypto_key_id=key["id"],
/// role="roles/cloudkms.cryptoKeyEncrypter",
/// member="user:jane@example.com",
/// condition={
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var cryptoKey = new Gcp.Kms.CryptoKeyIAMMember("crypto_key", new()
/// {
/// CryptoKeyId = key.Id,
/// Role = "roles/cloudkms.cryptoKeyEncrypter",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Kms.Inputs.CryptoKeyIAMMemberConditionArgs
/// {
/// Title = "expires_after_2019_12_31",
/// Description = "Expiring at midnight of 2019-12-31",
/// Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
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
/// _, err := kms.NewCryptoKeyIAMMember(ctx, "crypto_key", &kms.CryptoKeyIAMMemberArgs{
/// CryptoKeyId: pulumi.Any(key.Id),
/// Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypter"),
/// Member:      pulumi.String("user:jane@example.com"),
/// Condition: &kms.CryptoKeyIAMMemberConditionArgs{
/// Title:       pulumi.String("expires_after_2019_12_31"),
/// Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.kms.inputs.CryptoKeyIAMMemberConditionArgs;
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
/// var cryptoKey = new CryptoKeyIAMMember("cryptoKey", CryptoKeyIAMMemberArgs.builder()
/// .cryptoKeyId(key.id())
/// .role("roles/cloudkms.cryptoKeyEncrypter")
/// .member("user:jane@example.com")
/// .condition(CryptoKeyIAMMemberConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cryptoKey:
/// type: gcp:kms:CryptoKeyIAMMember
/// name: crypto_key
/// properties:
/// cryptoKeyId: ${key.id}
/// role: roles/cloudkms.cryptoKeyEncrypter
/// member: user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the identifier of the KMS crypto key only. For example:
///
/// * `{{project_id}}/{{location}}/{{key_ring_name}}/{{crypto_key_name}}`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = "{{project_id}}/{{location}}/{{key_ring_name}}/{{crypto_key_name}}"
///
/// to = google_kms_crypto_key_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:kms/cryptoKeyIAMMember:CryptoKeyIAMMember default {{project_id}}/{{location}}/{{key_ring_name}}/{{crypto_key_name}}
/// ```
class CryptoKeyIAMMember extends CustomResource {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final Output<CryptoKeyIAMMemberCondition?> condition;

  /// The crypto key ID, in the form
  /// `{project_id}/{location_name}/{key_ring_name}/{crypto_key_name}` or
  /// `{location_name}/{key_ring_name}/{crypto_key_name}`. In the second form,
  /// the provider's project setting will be used as a fallback.
  late final Output<String> cryptoKeyId;

  /// (Computed) The etag of the project's IAM policy.
  late final Output<String> etag;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, jane@example.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final Output<String> member;

  /// The role that should be applied. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  CryptoKeyIAMMember(
    String name, {
    CryptoKeyIAMMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:kms/cryptoKeyIAMMember:CryptoKeyIAMMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = Output.createUnknown<CryptoKeyIAMMemberCondition?>();
    this.cryptoKeyId = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.member = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
