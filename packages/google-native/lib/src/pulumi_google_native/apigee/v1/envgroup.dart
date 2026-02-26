import 'package:pulumi/pulumi.dart';
import 'envgroup_args.dart';

/// Creates a new environment group.
class Envgroup extends CustomResource {
  /// The time at which the environment group was created as milliseconds since epoch.
  late final Output<String> createdAt;

  /// Host names for this environment group.
  late final Output<List<String>> hostnames;

  /// The time at which the environment group was last updated as milliseconds since epoch.
  late final Output<String> lastModifiedAt;

  /// ID of the environment group. Overrides any ID in the environment_group resource.
  late final Output<String> name;
  late final Output<String> organizationId;

  /// State of the environment group. Values other than ACTIVE means the resource is not ready to use.
  late final Output<String> state;

  Envgroup(
    String name, {
    EnvgroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Envgroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createdAt = registerOutput<String>('createdAt');
    this.hostnames = registerOutput<List<String>>('hostnames');
    this.lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.state = registerOutput<String>('state');
  }
}
