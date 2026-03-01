// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_linked_service_web_linked_service_web_args_doc}
/// The set of arguments for LinkedServiceWeb.
/// {@endtemplate}
/// {@macro pulumi_datafactory_linked_service_web_linked_service_web_args_doc}
class LinkedServiceWebArgs {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to Web Linked Service:
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  final pulumi.Input<List<String>>? annotations;
  /// The type of authentication used to connect to the web table source. Valid options are `Anonymous`, `Basic` and `ClientCertificate`.
  final pulumi.Input<String> authenticationType;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Linked Service.
  final pulumi.Input<String>? description;
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  final pulumi.Input<String>? integrationRuntimeName;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The password for Basic authentication. Required if `authentication_type` sets to `Basic`.
  final pulumi.Input<String>? password;
  /// The URL of the web service endpoint (e.g. <https://www.microsoft.com>).
  final pulumi.Input<String> url;
  /// The username for Basic authentication. Required if `authentication_type` sets to `Basic`.
  final pulumi.Input<String>? username;

  /// Creates a new [LinkedServiceWebArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service.
  /// [authenticationType] The type of authentication used to connect to the web table source. Valid options are `Anonymous`, `Basic` and `ClientCertificate`.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service.
  /// [name] Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  /// [password] The password for Basic authentication. Required if `authentication_type` sets to `Basic`.
  /// [url] The URL of the web service endpoint (e.g. <https://www.microsoft.com>).
  /// [username] The username for Basic authentication. Required if `authentication_type` sets to `Basic`.
  LinkedServiceWebArgs({
    Map<String, String>? additionalProperties,
    List<String>? annotations,
    required String authenticationType,
    required String dataFactoryId,
    String? description,
    String? integrationRuntimeName,
    String? name,
    Map<String, String>? parameters,
    String? password,
    required String url,
    String? username,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      authenticationType = pulumi.Input.asInput<String>(authenticationType),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      integrationRuntimeName = pulumi.Input.asOptionalInput<String>(integrationRuntimeName),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      password = pulumi.Input.asOptionalInput<String>(password),
      url = pulumi.Input.asInput<String>(url),
      username = pulumi.Input.asOptionalInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'authenticationType': authenticationType,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'name': ?name,
      'parameters': ?parameters,
      'password': ?password,
      'url': url,
      'username': ?username,
    };
  }

  factory LinkedServiceWebArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceWebArgs(
      additionalProperties: map['additionalProperties'] == null ? null : (map['additionalProperties'] as Map).cast<String, String>(),
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<String>(),
      authenticationType: map['authenticationType'] as String,
      dataFactoryId: map['dataFactoryId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : map['integrationRuntimeName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      password: map['password'] == null ? null : map['password'] as String,
      url: map['url'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

