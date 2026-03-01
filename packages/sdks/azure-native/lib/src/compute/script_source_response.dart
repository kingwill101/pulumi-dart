// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_script_parameter_response.dart';

/// The source script from which the Script Version is going to be created.
class ScriptSourceResponse {
  /// Optional. Any input parameters that needs to passed to the script and are accessed within the script for its execution.
  final List<GalleryScriptParameterResponse>? parameters;
  /// Required. The link of the source script, it must be a readable storage blob with SAS URI or publicly accessible URI or managed identity enabled.
  final String scriptLink;

  /// Creates a new [ScriptSourceResponse].
  /// [parameters] Optional. Any input parameters that needs to passed to the script and are accessed within the script for its execution.
  /// [scriptLink] Required. The link of the source script, it must be a readable storage blob with SAS URI or publicly accessible URI or managed identity enabled.
  ScriptSourceResponse({
    this.parameters,
    required this.scriptLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters == null ? null : pulumi.Input.encodeList<GalleryScriptParameterResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'scriptLink': scriptLink,
    };
  }

  factory ScriptSourceResponse.fromMap(Map<String, dynamic> map) {
    return ScriptSourceResponse(
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<GalleryScriptParameterResponse>(map['parameters'], (value) => GalleryScriptParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
      scriptLink: map['scriptLink'] as String,
    );
  }
}

