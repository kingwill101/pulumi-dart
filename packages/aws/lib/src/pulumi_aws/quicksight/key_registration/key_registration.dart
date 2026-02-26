import 'package:pulumi/pulumi.dart';
import '../key_registration_key_registration/key_registration_key_registration.dart';
import 'key_registration_args.dart';

/// Registers customer managed keys in a Amazon QuickSight account.
///
/// > Deletion of this resource clears all CMK registrations from a QuickSight account. QuickSight then uses AWS owned keys to encrypt your resources.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.KeyRegistration("example", {keyRegistrations: [
/// {
/// keyArn: example1.arn,
/// },
/// {
/// keyArn: example2.arn,
/// defaultKey: true,
/// },
/// ]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.KeyRegistration("example", key_registrations=[
/// {
/// "key_arn": example1["arn"],
/// },
/// {
/// "key_arn": example2["arn"],
/// "default_key": True,
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Quicksight.KeyRegistration("example", new()
/// {
/// KeyRegistrations = new[]
/// {
/// new Aws.Quicksight.Inputs.KeyRegistrationKeyRegistrationArgs
/// {
/// KeyArn = example1.Arn,
/// },
/// new Aws.Quicksight.Inputs.KeyRegistrationKeyRegistrationArgs
/// {
/// KeyArn = example2.Arn,
/// DefaultKey = true,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := quicksight.NewKeyRegistration(ctx, "example", &quicksight.KeyRegistrationArgs{
/// KeyRegistrations: quicksight.KeyRegistrationKeyRegistrationArray{
/// &quicksight.KeyRegistrationKeyRegistrationArgs{
/// KeyArn: pulumi.Any(example1.Arn),
/// },
/// &quicksight.KeyRegistrationKeyRegistrationArgs{
/// KeyArn:     pulumi.Any(example2.Arn),
/// DefaultKey: pulumi.Bool(true),
/// },
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
/// import com.pulumi.aws.quicksight.KeyRegistration;
/// import com.pulumi.aws.quicksight.KeyRegistrationArgs;
/// import com.pulumi.aws.quicksight.inputs.KeyRegistrationKeyRegistrationArgs;
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
/// var example = new KeyRegistration("example", KeyRegistrationArgs.builder()
/// .keyRegistrations(
/// KeyRegistrationKeyRegistrationArgs.builder()
/// .keyArn(example1.arn())
/// .build(),
/// KeyRegistrationKeyRegistrationArgs.builder()
/// .keyArn(example2.arn())
/// .defaultKey(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:quicksight:KeyRegistration
/// properties:
/// keyRegistrations:
/// - keyArn: ${example1.arn}
/// - keyArn: ${example2.arn}
/// defaultKey: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight key registration using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/keyRegistration:KeyRegistration example "012345678901"
/// ```
class KeyRegistration extends CustomResource {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// Registered keys. See key_registration.
  late final Output<List<KeyRegistrationKeyRegistration>> keyRegistrations;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  KeyRegistration(
    String name, {
    KeyRegistrationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/keyRegistration:KeyRegistration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.keyRegistrations =
        registerOutput<List<KeyRegistrationKeyRegistration>>(
            'keyRegistrations');
    this.region = registerOutput<String>('region');
  }
}
