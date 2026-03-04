// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_response.dart';

/// Describes a cloud service extension profile.
class CloudServiceExtensionProfileResponse {
  /// List of extensions for the cloud service.
  final pulumi.Input<List<ExtensionResponse>>? extensions;

  /// Creates a new [CloudServiceExtensionProfileResponse].
  /// [extensions] List of extensions for the cloud service.
  CloudServiceExtensionProfileResponse({this.extensions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensions':
          ?pulumi.Input.mapOptionalInputValue<
            List<ExtensionResponse>,
            List<Map<String, dynamic>>
          >(
            extensions,
            (value) =>
                pulumi.Input.encodeList<
                  ExtensionResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory CloudServiceExtensionProfileResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudServiceExtensionProfileResponse(
      extensions: (() {
        final guardedValue = map['extensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ExtensionResponse>(
            guardedValue,
            (value) => ExtensionResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
