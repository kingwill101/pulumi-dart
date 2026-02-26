import 'package:pulumi/pulumi.dart';
import 'service_specific_credential_args.dart';

/// Provides an IAM Service Specific Credential.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.User("example", {name: "example"});
/// const exampleServiceSpecificCredential = new aws.iam.ServiceSpecificCredential("example", {
/// serviceName: "codecommit.amazonaws.com",
/// userName: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.User("example", name="example")
/// example_service_specific_credential = aws.iam.ServiceSpecificCredential("example",
/// service_name="codecommit.amazonaws.com",
/// user_name=example.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Iam.User("example", new()
/// {
/// Name = "example",
/// });
///
/// var exampleServiceSpecificCredential = new Aws.Iam.ServiceSpecificCredential("example", new()
/// {
/// ServiceName = "codecommit.amazonaws.com",
/// UserName = example.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := iam.NewUser(ctx, "example", &iam.UserArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewServiceSpecificCredential(ctx, "example", &iam.ServiceSpecificCredentialArgs{
/// ServiceName: pulumi.String("codecommit.amazonaws.com"),
/// UserName:    example.Name,
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
/// import com.pulumi.aws.iam.User;
/// import com.pulumi.aws.iam.UserArgs;
/// import com.pulumi.aws.iam.ServiceSpecificCredential;
/// import com.pulumi.aws.iam.ServiceSpecificCredentialArgs;
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
/// var example = new User("example", UserArgs.builder()
/// .name("example")
/// .build());
///
/// var exampleServiceSpecificCredential = new ServiceSpecificCredential("exampleServiceSpecificCredential", ServiceSpecificCredentialArgs.builder()
/// .serviceName("codecommit.amazonaws.com")
/// .userName(example.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:iam:User
/// properties:
/// name: example
/// exampleServiceSpecificCredential:
/// type: aws:iam:ServiceSpecificCredential
/// name: example
/// properties:
/// serviceName: codecommit.amazonaws.com
/// userName: ${example.name}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Bedrock API Key with Expiration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.User("example", {name: "example"});
/// const bedrock = new aws.iam.ServiceSpecificCredential("bedrock", {
/// serviceName: "bedrock.amazonaws.com",
/// userName: example.name,
/// credentialAgeDays: 30,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.User("example", name="example")
/// bedrock = aws.iam.ServiceSpecificCredential("bedrock",
/// service_name="bedrock.amazonaws.com",
/// user_name=example.name,
/// credential_age_days=30)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Iam.User("example", new()
/// {
/// Name = "example",
/// });
///
/// var bedrock = new Aws.Iam.ServiceSpecificCredential("bedrock", new()
/// {
/// ServiceName = "bedrock.amazonaws.com",
/// UserName = example.Name,
/// CredentialAgeDays = 30,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := iam.NewUser(ctx, "example", &iam.UserArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewServiceSpecificCredential(ctx, "bedrock", &iam.ServiceSpecificCredentialArgs{
/// ServiceName:       pulumi.String("bedrock.amazonaws.com"),
/// UserName:          example.Name,
/// CredentialAgeDays: pulumi.Int(30),
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
/// import com.pulumi.aws.iam.User;
/// import com.pulumi.aws.iam.UserArgs;
/// import com.pulumi.aws.iam.ServiceSpecificCredential;
/// import com.pulumi.aws.iam.ServiceSpecificCredentialArgs;
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
/// var example = new User("example", UserArgs.builder()
/// .name("example")
/// .build());
///
/// var bedrock = new ServiceSpecificCredential("bedrock", ServiceSpecificCredentialArgs.builder()
/// .serviceName("bedrock.amazonaws.com")
/// .userName(example.name())
/// .credentialAgeDays(30)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:iam:User
/// properties:
/// name: example
/// bedrock:
/// type: aws:iam:ServiceSpecificCredential
/// properties:
/// serviceName: bedrock.amazonaws.com
/// userName: ${example.name}
/// credentialAgeDays: 30 # API key expires after 30 days
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import IAM Service Specific Credentials using the `service_name:user_name:service_specific_credential_id`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/serviceSpecificCredential:ServiceSpecificCredential default `codecommit.amazonaws.com:example:some-id`
/// ```
class ServiceSpecificCredential extends CustomResource {
  /// The date and time, in RFC3339 format, when the service-specific credential was created.
  late final Output<String> createDate;

  /// The number of days until the service specific credential expires. This field is only valid for Bedrock API keys and must be between 1 and 36600 (approximately 100 years). When not specified, the credential will not expire.
  late final Output<int?> credentialAgeDays;

  /// The date and time, in RFC3339 format, when the service specific credential expires. This field is only present for Bedrock API keys that were created with an expiration period.
  late final Output<String> expirationDate;

  /// For Bedrock API keys, this is the public portion of the credential that includes the IAM user name and a suffix containing version and creation information.
  late final Output<String> serviceCredentialAlias;

  /// For Bedrock API keys, this is the secret portion of the credential that should be used to authenticate API calls. This value is only available when the credential is created.
  late final Output<String> serviceCredentialSecret;

  /// The name of the AWS service that is to be associated with the credentials. The service you specify here is the only service that can be accessed using these credentials. Supported services are `codecommit.amazonaws.com`, `bedrock.amazonaws.com`, and `cassandra.amazonaws.com`.
  late final Output<String> serviceName;

  /// The generated password for the service-specific credential. This value is only available when the credential is created.
  late final Output<String> servicePassword;

  /// The unique identifier for the service-specific credential.
  late final Output<String> serviceSpecificCredentialId;

  /// The generated user name for the service-specific credential. This value is generated by combining the IAM user's name combined with the ID number of the AWS account, as in `jane-at-123456789012`, for example.
  late final Output<String> serviceUserName;

  /// The status to be assigned to the service-specific credential. Valid values are `Active`, `Inactive`, and `Expired`. Default value is `Active`. Note that `Expired` is only used for read operations and cannot be set manually.
  late final Output<String?> status;

  /// The name of the IAM user that is to be associated with the credentials. The new service-specific credentials have the same permissions as the associated user except that they can be used only to access the specified service.
  late final Output<String> userName;

  ServiceSpecificCredential(
    String name, {
    ServiceSpecificCredentialArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/serviceSpecificCredential:ServiceSpecificCredential',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createDate = Output.createUnknown<String>();
    this.credentialAgeDays = Output.createUnknown<int?>();
    this.expirationDate = Output.createUnknown<String>();
    this.serviceCredentialAlias = Output.createUnknown<String>();
    this.serviceCredentialSecret = Output.createUnknown<String>();
    this.serviceName = Output.createUnknown<String>();
    this.servicePassword = Output.createUnknown<String>();
    this.serviceSpecificCredentialId = Output.createUnknown<String>();
    this.serviceUserName = Output.createUnknown<String>();
    this.status = Output.createUnknown<String?>();
    this.userName = Output.createUnknown<String>();
  }
}
