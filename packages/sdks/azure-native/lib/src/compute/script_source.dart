// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_script_parameter.dart';

/// The source script from which the Script Version is going to be created.
class ScriptSource {
  /// Optional. Any input parameters that needs to passed to the script and are accessed within the script for its execution.
  final pulumi.Input<List<GalleryScriptParameter>>? parameters;
  /// Required. The link of the source script, it must be a readable storage blob with SAS URI or publicly accessible URI or managed identity enabled.
  final pulumi.Input<String> scriptLink;

  /// Creates a new [ScriptSource].
  /// [parameters] Optional. Any input parameters that needs to passed to the script and are accessed within the script for its execution.
  /// [scriptLink] Required. The link of the source script, it must be a readable storage blob with SAS URI or publicly accessible URI or managed identity enabled.
  ScriptSource({
    this.parameters,
    required this.scriptLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<GalleryScriptParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GalleryScriptParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scriptLink': scriptLink,
    };
  }

  factory ScriptSource.fromMap(Map<String, dynamic> map) {
    return ScriptSource(
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<GalleryScriptParameter>(map['parameters'], (value) => GalleryScriptParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scriptLink: (map['scriptLink'] as String).input(),
    );
  }
}

