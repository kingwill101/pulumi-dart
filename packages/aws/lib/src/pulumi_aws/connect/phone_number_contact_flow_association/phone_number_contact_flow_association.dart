import 'package:pulumi/pulumi.dart';
import 'phone_number_contact_flow_association_args.dart';

/// Associates a flow with a phone number claimed to an Amazon Connect instance.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.PhoneNumberContactFlowAssociation("example", {
/// phoneNumberId: exampleAwsConnectPhoneNumber.id,
/// instanceId: exampleAwsConnectInstance.id,
/// contactFlowId: exampleAwsConnectContactFlow.contactFlowId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.PhoneNumberContactFlowAssociation("example",
/// phone_number_id=example_aws_connect_phone_number["id"],
/// instance_id=example_aws_connect_instance["id"],
/// contact_flow_id=example_aws_connect_contact_flow["contactFlowId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Connect.PhoneNumberContactFlowAssociation("example", new()
/// {
/// PhoneNumberId = exampleAwsConnectPhoneNumber.Id,
/// InstanceId = exampleAwsConnectInstance.Id,
/// ContactFlowId = exampleAwsConnectContactFlow.ContactFlowId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := connect.NewPhoneNumberContactFlowAssociation(ctx, "example", &connect.PhoneNumberContactFlowAssociationArgs{
/// PhoneNumberId: pulumi.Any(exampleAwsConnectPhoneNumber.Id),
/// InstanceId:    pulumi.Any(exampleAwsConnectInstance.Id),
/// ContactFlowId: pulumi.Any(exampleAwsConnectContactFlow.ContactFlowId),
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
/// import com.pulumi.aws.connect.PhoneNumberContactFlowAssociation;
/// import com.pulumi.aws.connect.PhoneNumberContactFlowAssociationArgs;
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
/// var example = new PhoneNumberContactFlowAssociation("example", PhoneNumberContactFlowAssociationArgs.builder()
/// .phoneNumberId(exampleAwsConnectPhoneNumber.id())
/// .instanceId(exampleAwsConnectInstance.id())
/// .contactFlowId(exampleAwsConnectContactFlow.contactFlowId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:connect:PhoneNumberContactFlowAssociation
/// properties:
/// phoneNumberId: ${exampleAwsConnectPhoneNumber.id}
/// instanceId: ${exampleAwsConnectInstance.id}
/// contactFlowId: ${exampleAwsConnectContactFlow.contactFlowId}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.connect.PhoneNumberContactFlowAssociation`" pulumi-lang-dotnet="`aws.connect.PhoneNumberContactFlowAssociation`" pulumi-lang-go="`connect.PhoneNumberContactFlowAssociation`" pulumi-lang-python="`connect.PhoneNumberContactFlowAssociation`" pulumi-lang-yaml="`aws.connect.PhoneNumberContactFlowAssociation`" pulumi-lang-java="`aws.connect.PhoneNumberContactFlowAssociation`">`aws.connect.PhoneNumberContactFlowAssociation`</span> using the <span pulumi-lang-nodejs="`phoneNumberId`" pulumi-lang-dotnet="`PhoneNumberId`" pulumi-lang-go="`phoneNumberId`" pulumi-lang-python="`phone_number_id`" pulumi-lang-yaml="`phoneNumberId`" pulumi-lang-java="`phoneNumberId`">`phone_number_id`</span>, <span pulumi-lang-nodejs="`instanceId`" pulumi-lang-dotnet="`InstanceId`" pulumi-lang-go="`instanceId`" pulumi-lang-python="`instance_id`" pulumi-lang-yaml="`instanceId`" pulumi-lang-java="`instanceId`">`instance_id`</span> and <span pulumi-lang-nodejs="`contactFlowId`" pulumi-lang-dotnet="`ContactFlowId`" pulumi-lang-go="`contactFlowId`" pulumi-lang-python="`contact_flow_id`" pulumi-lang-yaml="`contactFlowId`" pulumi-lang-java="`contactFlowId`">`contact_flow_id`</span> separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/phoneNumberContactFlowAssociation:PhoneNumberContactFlowAssociation example 36727a4c-4683-4e49-880c-3347c61110a4,fa6c1691-e2eb-4487-bdb9-1aaed6268ebd,c4acdc79-395e-4280-a294-9062f56b07bb
/// ```
class PhoneNumberContactFlowAssociation extends CustomResource {
  /// Contact flow ID.
  late final Output<String> contactFlowId;

  /// Amazon Connect instance ID.
  late final Output<String> instanceId;

  /// Phone number ID.
  late final Output<String> phoneNumberId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  PhoneNumberContactFlowAssociation(
    String name, {
    PhoneNumberContactFlowAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:connect/phoneNumberContactFlowAssociation:PhoneNumberContactFlowAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.contactFlowId = registerOutput<String>('contactFlowId');
    this.instanceId = registerOutput<String>('instanceId');
    this.phoneNumberId = registerOutput<String>('phoneNumberId');
    this.region = registerOutput<String>('region');
  }
}
