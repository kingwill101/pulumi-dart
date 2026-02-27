// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for HostedPublicVirtualInterfaceAccepter.
class HostedPublicVirtualInterfaceAccepterArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The ID of the Direct Connect virtual interface to accept.
  final pulumi.Input<String> virtualInterfaceId;

  HostedPublicVirtualInterfaceAccepterArgs({
    this.region,
    this.tags,
    required this.virtualInterfaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['virtualInterfaceId'] = virtualInterfaceId;
    return map;
  }

  factory HostedPublicVirtualInterfaceAccepterArgs.fromMap(
      Map<String, dynamic> map) {
    return HostedPublicVirtualInterfaceAccepterArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      virtualInterfaceId:
          pulumi.Input.asInput<String>(map['virtualInterfaceId']),
    );
  }
}
