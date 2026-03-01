import 'package:pulumi/pulumi.dart' as pulumi;
import 'phone_number_contact_flow_association_args.dart';
import 'phone_number_contact_flow_association_state.dart';

/// Associates a flow with a phone number claimed to an Amazon Connect instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.PhoneNumberContactFlowAssociation("example", {
///     phoneNumberId: exampleAwsConnectPhoneNumber.id,
///     instanceId: exampleAwsConnectInstance.id,
///     contactFlowId: exampleAwsConnectContactFlow.contactFlowId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.PhoneNumberContactFlowAssociation("example",
///     phone_number_id=example_aws_connect_phone_number["id"],
///     instance_id=example_aws_connect_instance["id"],
///     contact_flow_id=example_aws_connect_contact_flow["contactFlowId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Connect.PhoneNumberContactFlowAssociation("example", new()
///     {
///         PhoneNumberId = exampleAwsConnectPhoneNumber.Id,
///         InstanceId = exampleAwsConnectInstance.Id,
///         ContactFlowId = exampleAwsConnectContactFlow.ContactFlowId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewPhoneNumberContactFlowAssociation(ctx, "example", &connect.PhoneNumberContactFlowAssociationArgs{
/// 			PhoneNumberId: pulumi.Any(exampleAwsConnectPhoneNumber.Id),
/// 			InstanceId:    pulumi.Any(exampleAwsConnectInstance.Id),
/// 			ContactFlowId: pulumi.Any(exampleAwsConnectContactFlow.ContactFlowId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new PhoneNumberContactFlowAssociation("example", PhoneNumberContactFlowAssociationArgs.builder()
///             .phoneNumberId(exampleAwsConnectPhoneNumber.id())
///             .instanceId(exampleAwsConnectInstance.id())
///             .contactFlowId(exampleAwsConnectContactFlow.contactFlowId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:connect:PhoneNumberContactFlowAssociation
///     properties:
///       phoneNumberId: ${exampleAwsConnectPhoneNumber.id}
///       instanceId: ${exampleAwsConnectInstance.id}
///       contactFlowId: ${exampleAwsConnectContactFlow.contactFlowId}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.connect.PhoneNumberContactFlowAssociation` using the `phone_number_id`, `instance_id` and `contact_flow_id` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/phoneNumberContactFlowAssociation:PhoneNumberContactFlowAssociation example 36727a4c-4683-4e49-880c-3347c61110a4,fa6c1691-e2eb-4487-bdb9-1aaed6268ebd,c4acdc79-395e-4280-a294-9062f56b07bb
/// ```
class PhoneNumberContactFlowAssociation extends pulumi.CustomResource {
  /// Contact flow ID.
  late final pulumi.Output<String> contactFlowId;
  /// Amazon Connect instance ID.
  late final pulumi.Output<String> instanceId;
  /// Phone number ID.
  late final pulumi.Output<String> phoneNumberId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [PhoneNumberContactFlowAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PhoneNumberContactFlowAssociation]. {@macro pulumi_connect_phone_number_contact_flow_association_phone_number_contact_flow_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PhoneNumberContactFlowAssociation(
    String name, {
    PhoneNumberContactFlowAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/phoneNumberContactFlowAssociation:PhoneNumberContactFlowAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.contactFlowId = registerOutput<String>('contactFlowId');
    this.instanceId = registerOutput<String>('instanceId');
    this.phoneNumberId = registerOutput<String>('phoneNumberId');
    this.region = registerOutput<String>('region');
  }

  /// Gets an existing [PhoneNumberContactFlowAssociation] resource's state with the given [name] and [id].
  static PhoneNumberContactFlowAssociation get(
    String name,
    pulumi.Input<String> id, {
    PhoneNumberContactFlowAssociationState? state,
  }) {
    return PhoneNumberContactFlowAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PhoneNumberContactFlowAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/phoneNumberContactFlowAssociation:PhoneNumberContactFlowAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.contactFlowId = registerOutput<String>('contactFlowId');
    this.instanceId = registerOutput<String>('instanceId');
    this.phoneNumberId = registerOutput<String>('phoneNumberId');
    this.region = registerOutput<String>('region');
  }
}
