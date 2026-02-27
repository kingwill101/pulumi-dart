import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_stack_association_args.dart';

/// Manages an AppStream User Stack association.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AppStream User Stack Association using the `user_name`, `authentication_type`, and `stack_name`, separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:appstream/userStackAssociation:UserStackAssociation example userName/auhtenticationType/stackName
/// ```
class UserStackAssociation extends pulumi.CustomResource {
  /// Authentication type for the user.
  late final pulumi.Output<String> authenticationType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Whether a welcome email is sent to a user after the user is created in the user pool.
  late final pulumi.Output<bool?> sendEmailNotification;

  /// Name of the stack that is associated with the user.
  late final pulumi.Output<String> stackName;

  /// Email address of the user who is associated with the stack.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> userName;

  UserStackAssociation(
    String name, {
    UserStackAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appstream/userStackAssociation:UserStackAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationType = registerOutput<String>('authenticationType');
    this.region = registerOutput<String>('region');
    this.sendEmailNotification = registerOutput<bool?>('sendEmailNotification');
    this.stackName = registerOutput<String>('stackName');
    this.userName = registerOutput<String>('userName');
  }
}
