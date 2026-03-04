// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_hosted_public_virtual_interface_accepter_hosted_public_virtual_interface_accepter_args_doc}
/// The set of arguments for HostedPublicVirtualInterfaceAccepter.
/// {@endtemplate}
/// {@macro pulumi_directconnect_hosted_public_virtual_interface_accepter_hosted_public_virtual_interface_accepter_args_doc}
class HostedPublicVirtualInterfaceAccepterArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The ID of the Direct Connect virtual interface to accept.
  final pulumi.Input<String> virtualInterfaceId;

  /// Creates a new [HostedPublicVirtualInterfaceAccepterArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [virtualInterfaceId] The ID of the Direct Connect virtual interface to accept.
  HostedPublicVirtualInterfaceAccepterArgs({
    this.region,
    this.tags,
    required this.virtualInterfaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'tags': ?tags,
      'virtualInterfaceId': virtualInterfaceId,
    };
  }

  factory HostedPublicVirtualInterfaceAccepterArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return HostedPublicVirtualInterfaceAccepterArgs(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      virtualInterfaceId: pulumi.Input.fromValue(
        map['virtualInterfaceId'] as String,
      ),
    );
  }
}
