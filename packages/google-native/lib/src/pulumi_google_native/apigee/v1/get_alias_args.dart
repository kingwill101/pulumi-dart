// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getAlias.
class GetAliasArgs {
  final Input<String> aliasId;
  final Input<String> environmentId;
  final Input<String> keystoreId;
  final Input<String> organizationId;

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
      aliasId: Input.asInput<String>(map['aliasId']),
      environmentId: Input.asInput<String>(map['environmentId']),
      keystoreId: Input.asInput<String>(map['keystoreId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
