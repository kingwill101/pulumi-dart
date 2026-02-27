import 'package:pulumi/pulumi.dart';
import '../access_levels_access_level/access_levels_access_level.dart';
import 'access_levels_args.dart';

/// ## Example Usage
///
/// ### Access Context Manager Access Levels Basic
///
///
///
///
/// ## Import
///
/// AccessLevels can be imported using any of these accepted formats:
///
/// * `{{parent}}/accessLevels`
///
/// * `{{parent}}`
///
/// When using the `pulumi import` command, AccessLevels can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/accessLevels:AccessLevels default {{parent}}/accessLevels
/// ```
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/accessLevels:AccessLevels default {{parent}}
/// ```
class AccessLevels extends CustomResource {
  /// The desired Access Levels that should replace all existing Access Levels in the Access Policy.
  /// Structure is documented below.
  late final Output<List<AccessLevelsAccessLevel>?> accessLevels;

  /// The AccessPolicy this AccessLevel lives in.
  /// Format: accessPolicies/{policy_id}
  late final Output<String> parent;

  AccessLevels(
    String name, {
    AccessLevelsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/accessLevels:AccessLevels',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessLevels =
        registerOutput<List<AccessLevelsAccessLevel>?>('accessLevels');
    this.parent = registerOutput<String>('parent');
  }
}
