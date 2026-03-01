// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_api_api_args_doc}
/// The set of arguments for Api.
/// {@endtemplate}
/// {@macro pulumi_apigateway_api_api_args_doc}
class ApiArgs {
  /// Identifier to assign to the API. Must be unique within scope of the parent resource(project)
  final pulumi.Input<String> apiId;
  /// A user-visible name for the API.
  final pulumi.Input<String>? displayName;
  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Immutable. The name of a Google Managed Service ( https://cloud.google.com/service-infrastructure/docs/glossary#managed).
  /// If not specified, a new Service will automatically be created in the same project as this API.
  final pulumi.Input<String>? managedService;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ApiArgs].
  /// [apiId] Identifier to assign to the API. Must be unique within scope of the parent resource(project)
  /// [displayName] A user-visible name for the API.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [managedService] Immutable. The name of a Google Managed Service ( https://cloud.google.com/service-infrastructure/docs/glossary#managed).
  /// [project] The ID of the project in which the resource belongs.
  ApiArgs({
    required String apiId,
    String? displayName,
    Map<String, String>? labels,
    String? managedService,
    String? project,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      managedService = pulumi.Input.asOptionalInput<String>(managedService),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'displayName': ?displayName,
      'labels': ?labels,
      'managedService': ?managedService,
      'project': ?project,
    };
  }

  factory ApiArgs.fromMap(Map<String, dynamic> map) {
    return ApiArgs(
      apiId: map['apiId'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      managedService: map['managedService'] == null ? null : map['managedService'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

