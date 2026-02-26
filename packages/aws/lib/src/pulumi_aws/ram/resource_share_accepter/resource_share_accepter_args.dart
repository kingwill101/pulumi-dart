// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ResourceShareAccepter.
class ResourceShareAccepterArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ARN of the resource share.
  final Input<String> shareArn;

  ResourceShareAccepterArgs({
    this.region,
    required this.shareArn,
  });

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
      region: Input.asOptionalInput<String>(map['region']),
      shareArn: Input.asInput<String>(map['shareArn']),
    );
  }
}
