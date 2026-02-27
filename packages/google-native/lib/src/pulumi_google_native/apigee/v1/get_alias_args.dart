// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAlias.
class GetAliasArgs {
  final pulumi.Input<String> aliasId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> keystoreId;
  final pulumi.Input<String> organizationId;

  GetAliasArgs({
    required this.aliasId,
    required this.environmentId,
    required this.keystoreId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aliasId'] = aliasId;
    map['environmentId'] = environmentId;
    map['keystoreId'] = keystoreId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetAliasArgs.fromMap(Map<String, dynamic> map) {
    return GetAliasArgs(
      aliasId: pulumi.Input.asInput<String>(map['aliasId']),
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      keystoreId: pulumi.Input.asInput<String>(map['keystoreId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
