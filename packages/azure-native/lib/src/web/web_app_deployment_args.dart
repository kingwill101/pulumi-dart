// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_deployment_args_doc}
/// The set of arguments for WebAppDeployment.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_deployment_args_doc}
class WebAppDeploymentArgs {
  /// True if deployment is currently active, false if completed and null if not started.
  final pulumi.Input<bool>? active;
  /// Who authored the deployment.
  final pulumi.Input<String>? author;
  /// Author email.
  final pulumi.Input<String>? authorEmail;
  /// Who performed the deployment.
  final pulumi.Input<String>? deployer;
  /// Details on deployment.
  final pulumi.Input<String>? details;
  /// End time.
  final pulumi.Input<String>? endTime;
  /// ID of an existing deployment.
  final pulumi.Input<String>? id;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Details about deployment status.
  final pulumi.Input<String>? message;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Start time.
  final pulumi.Input<String>? startTime;
  /// Deployment status.
  final pulumi.Input<int>? status;

  /// Creates a new [WebAppDeploymentArgs].
  /// [active] True if deployment is currently active, false if completed and null if not started.
  /// [author] Who authored the deployment.
  /// [authorEmail] Author email.
  /// [deployer] Who performed the deployment.
  /// [details] Details on deployment.
  /// [endTime] End time.
  /// [id] ID of an existing deployment.
  /// [kind] Kind of resource.
  /// [message] Details about deployment status.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [startTime] Start time.
  /// [status] Deployment status.
  WebAppDeploymentArgs({
    bool? active,
    String? author,
    String? authorEmail,
    String? deployer,
    String? details,
    String? endTime,
    String? id,
    String? kind,
    String? message,
    required String name,
    required String resourceGroupName,
    String? startTime,
    int? status,
  }) :
      active = pulumi.Input.asOptionalInput<bool>(active),
      author = pulumi.Input.asOptionalInput<String>(author),
      authorEmail = pulumi.Input.asOptionalInput<String>(authorEmail),
      deployer = pulumi.Input.asOptionalInput<String>(deployer),
      details = pulumi.Input.asOptionalInput<String>(details),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      id = pulumi.Input.asOptionalInput<String>(id),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      message = pulumi.Input.asOptionalInput<String>(message),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      status = pulumi.Input.asOptionalInput<int>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'author': ?author,
      'authorEmail': ?authorEmail,
      'deployer': ?deployer,
      'details': ?details,
      'endTime': ?endTime,
      'id': ?id,
      'kind': ?kind,
      'message': ?message,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'startTime': ?startTime,
      'status': ?status,
    };
  }

  factory WebAppDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return WebAppDeploymentArgs(
      active: map['active'] == null ? null : map['active'] as bool,
      author: map['author'] == null ? null : map['author'] as String,
      authorEmail: map['authorEmail'] == null ? null : map['authorEmail'] as String,
      deployer: map['deployer'] == null ? null : map['deployer'] as String,
      details: map['details'] == null ? null : map['details'] as String,
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      status: map['status'] == null ? null : map['status'] as int,
    );
  }
}

