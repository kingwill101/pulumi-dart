import 'package:pulumi/pulumi.dart';
import 'dest_group_args.dart';

/// Creates a new TunnelDestGroup.
class DestGroup extends CustomResource {
  /// Unordered list. List of CIDRs that this group applies to.
  late final Output<List<String>> cidrs;

  /// Unordered list. List of FQDNs that this group applies to.
  late final Output<List<String>> fqdns;
  late final Output<String> location;

  /// Immutable. Identifier for the TunnelDestGroup. Must be unique within the project and contain only lower case letters (a-z) and dashes (-).
  late final Output<String> name;
  late final Output<String> project;

  /// Required. The ID to use for the TunnelDestGroup, which becomes the final component of the resource name. This value must be 4-63 characters, and valid characters are `[a-z]-`.
  late final Output<String> tunnelDestGroupId;

  DestGroup(
    String name, {
    DestGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:iap/v1:DestGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cidrs = Output.createUnknown<List<String>>();
    this.fqdns = Output.createUnknown<List<String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.tunnelDestGroupId = Output.createUnknown<String>();
  }
}
