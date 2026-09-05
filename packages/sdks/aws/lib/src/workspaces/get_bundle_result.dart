// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bundle_compute_type.dart';
import 'get_bundle_root_storage.dart';
import 'get_bundle_user_storage.dart';

/// Result data returned by getBundle.
class GetBundleResult {
  /// The ID of the bundle.
  final String? bundleId;
  /// The compute type. See supported fields below.
  final List<GetBundleComputeType>? computeTypes;
  /// The description of the bundle.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Name of the compute type.
  final String? name;
  /// The owner of the bundle.
  final String? owner;
  final String? region;
  /// The root volume. See supported fields below.
  final List<GetBundleRootStorage>? rootStorages;
  /// The user storage. See supported fields below.
  final List<GetBundleUserStorage>? userStorages;

  /// Creates a new [GetBundleResult].
  /// [bundleId] The ID of the bundle.
  /// [computeTypes] The compute type. See supported fields below.
  /// [description] The description of the bundle.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the compute type.
  /// [owner] The owner of the bundle.
  /// [region] Optional.
  /// [rootStorages] The root volume. See supported fields below.
  /// [userStorages] The user storage. See supported fields below.
  const GetBundleResult({
    this.bundleId,
    this.computeTypes,
    this.description,
    this.id,
    this.name,
    this.owner,
    this.region,
    this.rootStorages,
    this.userStorages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleId': ?bundleId,
      'computeTypes': ?(() { final guardedValue = computeTypes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBundleComputeType, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'owner': ?owner,
      'region': ?region,
      'rootStorages': ?(() { final guardedValue = rootStorages; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBundleRootStorage, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'userStorages': ?(() { final guardedValue = userStorages; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBundleUserStorage, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetBundleResult.fromMap(Map<String, dynamic> map) {
    return GetBundleResult(
      bundleId: (() { final guardedValue = map['bundleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      computeTypes: (() { final guardedValue = map['computeTypes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBundleComputeType>(guardedValue, (value) => GetBundleComputeType.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rootStorages: (() { final guardedValue = map['rootStorages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBundleRootStorage>(guardedValue, (value) => GetBundleRootStorage.fromMap((value as Map).cast<String, dynamic>())); })(),
      userStorages: (() { final guardedValue = map['userStorages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBundleUserStorage>(guardedValue, (value) => GetBundleUserStorage.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
