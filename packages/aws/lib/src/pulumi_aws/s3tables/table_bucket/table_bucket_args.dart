// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../table_bucket_encryption_configuration/table_bucket_encryption_configuration.dart';
import '../table_bucket_maintenance_configuration/table_bucket_maintenance_configuration.dart';

/// The set of arguments for TableBucket.
class TableBucketArgs {
  /// A single table bucket encryption configuration object.
  /// See `encryption_configuration` below.
  final Input<TableBucketEncryptionConfiguration>? encryptionConfiguration;

  /// Whether all tables and namespaces within the table bucket should be deleted *when the table bucket is destroyed* so that the table bucket can be destroyed without error. These tables and namespaces are *not* recoverable. This only deletes tables and namespaces when the table bucket is destroyed, *not* when setting this parameter to `true`. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the table bucket or destroying the table bucket, this flag will not work. Additionally when importing a table bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  final Input<bool>? forceDestroy;

  /// A single table bucket maintenance configuration object.
  /// See `maintenance_configuration` below.
  final Input<TableBucketMaintenanceConfiguration>? maintenanceConfiguration;

  /// Name of the table bucket.
  /// Must be between 3 and 63 characters in length.
  /// Can consist of lowercase letters, numbers, and hyphens, and must begin and end with a lowercase letter or number.
  /// A full list of bucket naming rules can be found in the [S3 Tables documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-naming.html#table-buckets-naming-rules).
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  TableBucketArgs({
    this.encryptionConfiguration,
    this.forceDestroy,
    this.maintenanceConfiguration,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionConfigurationValue = encryptionConfiguration;
    if (encryptionConfigurationValue != null) {
      map['encryptionConfiguration'] = Input.mapOptionalInputValue<
              TableBucketEncryptionConfiguration, Map<String, dynamic>>(
          encryptionConfigurationValue, (value) => value.toMap());
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final maintenanceConfigurationValue = maintenanceConfiguration;
    if (maintenanceConfigurationValue != null) {
      map['maintenanceConfiguration'] = Input.mapOptionalInputValue<
              TableBucketMaintenanceConfiguration, Map<String, dynamic>>(
          maintenanceConfigurationValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory TableBucketArgs.fromMap(Map<String, dynamic> map) {
    return TableBucketArgs(
      encryptionConfiguration:
          Input.asOptionalInput<TableBucketEncryptionConfiguration>(
              map['encryptionConfiguration']),
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      maintenanceConfiguration:
          Input.asOptionalInput<TableBucketMaintenanceConfiguration>(
              map['maintenanceConfiguration']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
