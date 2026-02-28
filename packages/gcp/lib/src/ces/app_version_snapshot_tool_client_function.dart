// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_client_function_parameter.dart';
import 'app_version_snapshot_tool_client_function_response.dart';

class AppVersionSnapshotToolClientFunction {
  /// The description of the app version.
  final String? description;

  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final String? name;

  /// (Output)
  /// Represents a select subset of an OpenAPI 3.0 schema object.
  /// Structure is documented below.
  final List<AppVersionSnapshotToolClientFunctionParameter>? parameters;

  /// (Output)
  /// Represents a select subset of an OpenAPI 3.0 schema object.
  /// Structure is documented below.
  final List<AppVersionSnapshotToolClientFunctionResponse>? responses;

  /// Creates a new [AppVersionSnapshotToolClientFunction].
  /// [description] The description of the app version.
  /// [name] (Output)
  /// [parameters] (Output)
  /// [responses] (Output)
  AppVersionSnapshotToolClientFunction({
    this.description,
    this.name,
    this.parameters,
    this.responses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.encodeList<
          AppVersionSnapshotToolClientFunctionParameter,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    final responsesValue = responses;
    if (responsesValue != null) {
      map['responses'] = pulumi.Input.encodeList<
          AppVersionSnapshotToolClientFunctionResponse,
          Map<String, dynamic>>(responsesValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppVersionSnapshotToolClientFunction.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotToolClientFunction(
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<
                  AppVersionSnapshotToolClientFunctionParameter>(
              map['parameters'],
              (value) => AppVersionSnapshotToolClientFunctionParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      responses: map['responses'] == null
          ? null
          : pulumi.Input.decodeList<
                  AppVersionSnapshotToolClientFunctionResponse>(
              map['responses'],
              (value) => AppVersionSnapshotToolClientFunctionResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
