// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'library_encryption_configuration.dart';
import 'library_timeouts.dart';

/// {@template pulumi_bedrockdataautomation_library_library_args_doc}
/// The set of arguments for Library.
/// {@endtemplate}
/// {@macro pulumi_bedrockdataautomation_library_library_args_doc}
class LibraryArgs {
  /// Description of the library. Removing the description forces a new resource, because the service can't remove a description from an existing library.
  final pulumi.Input<String?>? description;
  /// Encryption settings for the library. Changing this block forces a new resource. See `encryptionConfiguration` Block below.
  final pulumi.Input<LibraryEncryptionConfiguration?>? encryptionConfiguration;
  /// Name of the library. Changing this value forces a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<LibraryTimeouts?>? timeouts;

  /// Creates a new [LibraryArgs].
  /// [description] Description of the library. Removing the description forces a new resource, because the service can't remove a description from an existing library.
  /// [encryptionConfiguration] Encryption settings for the library. Changing this block forces a new resource. See `encryptionConfiguration` Block below.
  /// [name] Name of the library. Changing this value forces a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const LibraryArgs({
    this.description,
    this.encryptionConfiguration,
    this.name,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<LibraryEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<LibraryTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory LibraryArgs.fromMap(Map<String, dynamic> map) {
    return LibraryArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LibraryEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LibraryTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
