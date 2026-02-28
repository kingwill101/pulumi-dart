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
    String? region,
    required String shareArn,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        shareArn = pulumi.Input.asInput<String>(shareArn);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['shareArn'] = shareArn;
    return map;
  }

  factory ResourceShareAccepterArgs.fromMap(Map<String, dynamic> map) {
    return ResourceShareAccepterArgs(
      region: map['region'] == null ? null : map['region'] as String,
      shareArn: map['shareArn'] as String,
    );
  }
}
