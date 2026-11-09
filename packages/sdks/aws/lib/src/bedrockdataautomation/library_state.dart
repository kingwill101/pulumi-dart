// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'library_encryption_configuration.dart';
import 'library_entity_type.dart';
import 'library_timeouts.dart';

/// Input properties used for looking up and filtering Library resources.
class LibraryState {
  /// ARN of the library.
  final pulumi.Input<String?>? arn;
  /// Time the library was created, in RFC3339 format.
  final pulumi.Input<String?>? creationTime;
  /// Description of the library. Removing the description forces a new resource, because the service can't remove a description from an existing library.
  final pulumi.Input<String?>? description;
  /// Encryption settings for the library. Changing this block forces a new resource. See `encryptionConfiguration` Block below.
  final pulumi.Input<LibraryEncryptionConfiguration?>? encryptionConfiguration;
  /// Entity types in the library. See `entityTypes` Block below.
  final pulumi.Input<List<LibraryEntityType>?>? entityTypes;
  /// Name of the library. Changing this value forces a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Status of the library.
  final pulumi.Input<String?>? status;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<LibraryTimeouts?>? timeouts;

  /// Creates a new [LibraryState].
  /// [arn] ARN of the library.
  /// [creationTime] Time the library was created, in RFC3339 format.
  /// [description] Description of the library. Removing the description forces a new resource, because the service can't remove a description from an existing library.
  /// [encryptionConfiguration] Encryption settings for the library. Changing this block forces a new resource. See `encryptionConfiguration` Block below.
  /// [entityTypes] Entity types in the library. See `entityTypes` Block below.
  /// [name] Name of the library. Changing this value forces a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the library.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const LibraryState({
    this.arn,
    this.creationTime,
    this.description,
    this.encryptionConfiguration,
    this.entityTypes,
    this.name,
    this.region,
    this.status,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationTime': ?creationTime,
      'description': ?description,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<LibraryEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'entityTypes': ?pulumi.Input.mapOptionalInputValue<List<LibraryEntityType>, List<Map<String, dynamic>>>(entityTypes, (value) => pulumi.Input.encodeList<LibraryEntityType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<LibraryTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory LibraryState.fromMap(Map<String, dynamic> map) {
    return LibraryState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LibraryEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      entityTypes: (() { final guardedValue = map['entityTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LibraryEntityType>(guardedValue, (value) => LibraryEntityType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LibraryTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
