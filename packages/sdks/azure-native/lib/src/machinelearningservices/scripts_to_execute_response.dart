// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'script_reference_response.dart';

/// Customized setup scripts
class ScriptsToExecuteResponse {
  /// Script that's run only once during provision of the compute.
  final pulumi.Input<ScriptReferenceResponse>? creationScript;

  /// Script that's run every time the machine starts.
  final pulumi.Input<ScriptReferenceResponse>? startupScript;

  /// Creates a new [ScriptsToExecuteResponse].
  /// [creationScript] Script that's run only once during provision of the compute.
  /// [startupScript] Script that's run every time the machine starts.
  ScriptsToExecuteResponse({this.creationScript, this.startupScript});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationScript':
          ?pulumi.Input.mapOptionalInputValue<
            ScriptReferenceResponse,
            Map<String, dynamic>
          >(creationScript, (value) => value.toMap()),
      'startupScript':
          ?pulumi.Input.mapOptionalInputValue<
            ScriptReferenceResponse,
            Map<String, dynamic>
          >(startupScript, (value) => value.toMap()),
    };
  }

  factory ScriptsToExecuteResponse.fromMap(Map<String, dynamic> map) {
    return ScriptsToExecuteResponse(
      creationScript: (() {
        final guardedValue = map['creationScript'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ScriptReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      startupScript: (() {
        final guardedValue = map['startupScript'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ScriptReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
