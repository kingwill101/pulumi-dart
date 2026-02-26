// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_table_server_side_encryption/get_table_server_side_encryption.dart';

/// Arguments for getTable.
class GetTableArgs {
  /// Name of the DynamoDB table.
  final Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<GetTableServerSideEncryption>? serverSideEncryption;
  final Input<Map<String, String>>? tags;

  GetTableArgs({
    required this.name,
    this.region,
    this.serverSideEncryption,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final serverSideEncryptionValue = serverSideEncryption;
    if (serverSideEncryptionValue != null) {
      map['serverSideEncryption'] = Input.mapOptionalInputValue<
              GetTableServerSideEncryption, Map<String, dynamic>>(
          serverSideEncryptionValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetTableArgs.fromMap(Map<String, dynamic> map) {
    return GetTableArgs(
      name: Input.asInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      serverSideEncryption: Input.asOptionalInput<GetTableServerSideEncryption>(
          map['serverSideEncryption']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
