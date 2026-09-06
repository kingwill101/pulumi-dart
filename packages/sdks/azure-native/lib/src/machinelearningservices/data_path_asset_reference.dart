// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reference to an asset via its path in a datastore.
class DataPathAssetReference {
  /// ARM resource ID of the datastore where the asset is located.
  final pulumi.Input<String?>? datastoreId;
  /// The path of the file/directory in the datastore.
  final pulumi.Input<String?>? path;
  /// Enum to determine which reference method to use for an asset.
  /// Expected value is 'DataPath'.
  final pulumi.Input<String> referenceType;

  /// Creates a new [DataPathAssetReference].
  /// [datastoreId] ARM resource ID of the datastore where the asset is located.
  /// [path] The path of the file/directory in the datastore.
  /// [referenceType] Enum to determine which reference method to use for an asset.
  const DataPathAssetReference({
    this.datastoreId,
    this.path,
    required this.referenceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastoreId': ?datastoreId,
      'path': ?path,
      'referenceType': referenceType,
    };
  }

  factory DataPathAssetReference.fromMap(Map<String, dynamic> map) {
    return DataPathAssetReference(
      datastoreId: (() { final guardedValue = map['datastoreId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referenceType: pulumi.Input.fromValue(map['referenceType'] as String),
    );
  }
}
