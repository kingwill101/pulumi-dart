import 'package:pulumi/pulumi.dart';
import 'thing_principal_attachment_args.dart';

/// Attaches Principal to AWS IoT Thing.
class ThingPrincipalAttachment extends CustomResource {
  /// The AWS IoT Certificate ARN or Amazon Cognito Identity ID.
  late final Output<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the thing.
  late final Output<String> thing;

  /// The type of relationship to specify when attaching a principal to a thing. Valid values are `EXCLUSIVE_THING` (the thing will be the only one attached to the principal) or `NON_EXCLUSIVE_THING` (multiple things can be attached to the principal). Defaults to `NON_EXCLUSIVE_THING`.
  late final Output<String> thingPrincipalType;

  ThingPrincipalAttachment(
    String name, {
    ThingPrincipalAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iot/thingPrincipalAttachment:ThingPrincipalAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.principal = registerOutput<String>('principal');
    this.region = registerOutput<String>('region');
    this.thing = registerOutput<String>('thing');
    this.thingPrincipalType = registerOutput<String>('thingPrincipalType');
  }
}
