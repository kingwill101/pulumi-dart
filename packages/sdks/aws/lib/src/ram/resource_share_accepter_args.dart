// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_resource_share_accepter_resource_share_accepter_args_doc}
/// The set of arguments for ResourceShareAccepter.
/// {@endtemplate}
/// {@macro pulumi_ram_resource_share_accepter_resource_share_accepter_args_doc}
class ResourceShareAccepterArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the resource share.
  final pulumi.Input<String> shareArn;

  /// Creates a new [ResourceShareAccepterArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [shareArn] The ARN of the resource share.
  ResourceShareAccepterArgs({
    this.region,
    required this.shareArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'shareArn': shareArn,
    };
  }

  factory ResourceShareAccepterArgs.fromMap(Map<String, dynamic> map) {
    return ResourceShareAccepterArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareArn: pulumi.Input.fromValue(map['shareArn'] as String),
    );
  }
}

