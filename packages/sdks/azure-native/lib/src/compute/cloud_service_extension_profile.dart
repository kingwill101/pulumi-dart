// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension.dart';

/// Describes a cloud service extension profile.
class CloudServiceExtensionProfile {
  /// List of extensions for the cloud service.
  final pulumi.Input<List<Extension>>? extensions;

  /// Creates a new [CloudServiceExtensionProfile].
  /// [extensions] List of extensions for the cloud service.
  CloudServiceExtensionProfile({this.extensions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensions':
          ?pulumi.Input.mapOptionalInputValue<
            List<Extension>,
            List<Map<String, dynamic>>
          >(
            extensions,
            (value) => pulumi.Input.encodeList<Extension, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
    };
  }

  factory CloudServiceExtensionProfile.fromMap(Map<String, dynamic> map) {
    return CloudServiceExtensionProfile(
      extensions: (() {
        final guardedValue = map['extensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Extension>(
            guardedValue,
            (value) =>
                Extension.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
