// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_script_parameter_response.dart';

/// The source script from which the Script Version is going to be created.
class ScriptSourceResponse {
  /// Optional. Any input parameters that needs to passed to the script and are accessed within the script for its execution.
  final pulumi.Input<List<GalleryScriptParameterResponse>?>? parameters;
  /// Required. The link of the source script, it must be a readable storage blob with SAS URI or publicly accessible URI or managed identity enabled.
  final pulumi.Input<String> scriptLink;

  /// Creates a new [ScriptSourceResponse].
  /// [parameters] Optional. Any input parameters that needs to passed to the script and are accessed within the script for its execution.
  /// [scriptLink] Required. The link of the source script, it must be a readable storage blob with SAS URI or publicly accessible URI or managed identity enabled.
  const ScriptSourceResponse({
    this.parameters,
    required this.scriptLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<GalleryScriptParameterResponse>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GalleryScriptParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scriptLink': scriptLink,
    };
  }

  factory ScriptSourceResponse.fromMap(Map<String, dynamic> map) {
    return ScriptSourceResponse(
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GalleryScriptParameterResponse>(guardedValue, (value) => GalleryScriptParameterResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scriptLink: pulumi.Input.fromValue(map['scriptLink'] as String),
    );
  }
}
