import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_access_scope_args.dart';

/// Resource for managing an AWS SSO Admin Application Access Scope.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SSO Admin Application Access Scope using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/applicationAccessScope:ApplicationAccessScope example arn:aws:sso::123456789012:application/ssoins-123456789012/apl-123456789012,sso:account:access
/// ```
class ApplicationAccessScope extends pulumi.CustomResource {
  /// Specifies the ARN of the application with the access scope with the targets to add or update.
  late final pulumi.Output<String> applicationArn;

  /// Specifies an array list of ARNs that represent the authorized targets for this access scope.
  late final pulumi.Output<List<String>?> authorizedTargets;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Specifies the name of the access scope to be associated with the specified targets.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> scope;

  ApplicationAccessScope(
    String name, {
    ApplicationAccessScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/applicationAccessScope:ApplicationAccessScope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationArn = registerOutput<String>('applicationArn');
    this.authorizedTargets = registerOutput<List<String>?>('authorizedTargets');
    this.region = registerOutput<String>('region');
    this.scope = registerOutput<String>('scope');
  }
}
