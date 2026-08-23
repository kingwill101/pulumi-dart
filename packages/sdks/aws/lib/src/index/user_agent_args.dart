// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_user_agent_user_agent_args_doc}
/// Arguments for userAgent.
/// {@endtemplate}
/// {@macro pulumi_index_user_agent_user_agent_args_doc}
class UserAgentArgs {
  /// Comment describing any additional product details.
  final pulumi.Input<String> comment;
  /// Product name.
  final pulumi.Input<String> productName;
  /// Product version.
  final pulumi.Input<String> productVersion;

  /// Creates a new [UserAgentArgs].
  /// [comment] Comment describing any additional product details.
  /// [productName] Product name.
  /// [productVersion] Product version.
  const UserAgentArgs({
    required this.comment,
    required this.productName,
    required this.productVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'productName': productName,
      'productVersion': productVersion,
    };
  }

  factory UserAgentArgs.fromMap(Map<String, dynamic> map) {
    return UserAgentArgs(
      comment: pulumi.Input.fromValue(map['comment'] as String),
      productName: pulumi.Input.fromValue(map['productName'] as String),
      productVersion: pulumi.Input.fromValue(map['productVersion'] as String),
    );
  }
}
