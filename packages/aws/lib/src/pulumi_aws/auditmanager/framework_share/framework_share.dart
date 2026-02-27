import 'package:pulumi/pulumi.dart';
import 'framework_share_args.dart';

/// Resource for managing an AWS Audit Manager Framework Share.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Audit Manager Framework Share using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/frameworkShare:FrameworkShare example abcdef-123456
/// ```
class FrameworkShare extends CustomResource {
  /// Comment from the sender about the share request.
  late final Output<String?> comment;

  /// Amazon Web Services account of the recipient.
  late final Output<String> destinationAccount;

  /// Amazon Web Services region of the recipient.
  late final Output<String> destinationRegion;

  /// Unique identifier for the shared custom framework.
  ///
  /// The following arguments are optional:
  late final Output<String> frameworkId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Status of the share request.
  late final Output<String> status;

  FrameworkShare(
    String name, {
    FrameworkShareArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/frameworkShare:FrameworkShare',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.comment = registerOutput<String?>('comment');
    this.destinationAccount = registerOutput<String>('destinationAccount');
    this.destinationRegion = registerOutput<String>('destinationRegion');
    this.frameworkId = registerOutput<String>('frameworkId');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
  }
}
