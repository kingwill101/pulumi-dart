import 'package:pulumi/pulumi.dart' as pulumi;
import 'phone_number_contact_flow_association_args.dart';

/// Associates a flow with a phone number claimed to an Amazon Connect instance.
///
/// ## Example Usage
///
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
}
