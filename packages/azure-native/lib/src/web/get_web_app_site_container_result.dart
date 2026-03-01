// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_variable_response.dart';
import 'volume_mount_response.dart';

/// Result data returned by getWebAppSiteContainer.
class GetWebAppSiteContainerResult {
  /// Auth Type
  final String? authType;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Created Time
  final String createdTime;
  /// List of environment variables
  final List<EnvironmentVariableResponse>? environmentVariables;
  /// Resource Id.
  final String id;
  /// Image Name
  final String image;
  /// <code>true</code> if the container is the main site container; <code>false</code> otherwise.
  final bool isMain;
  /// Kind of resource.
  final String? kind;
  /// Last Modified Time
  final String lastModifiedTime;
  /// Resource Name.
  final String name;
  /// Password Secret
  final String? passwordSecret;
  /// StartUp Command
  final String? startUpCommand;
  /// Target Port
  final String? targetPort;
  /// Resource type.
  final String type;
  /// UserManagedIdentity ClientId
  final String? userManagedIdentityClientId;
  /// User Name
  final String? userName;
  /// List of volume mounts
  final List<VolumeMountResponse>? volumeMounts;

  /// Creates a new [GetWebAppSiteContainerResult].
  /// [authType] Auth Type
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdTime] Created Time
  /// [environmentVariables] List of environment variables
  /// [id] Resource Id.
  /// [image] Image Name
  /// [isMain] <code>true</code> if the container is the main site container; <code>false</code> otherwise.
  /// [kind] Kind of resource.
  /// [lastModifiedTime] Last Modified Time
  /// [name] Resource Name.
  /// [passwordSecret] Password Secret
  /// [startUpCommand] StartUp Command
  /// [targetPort] Target Port
  /// [type] Resource type.
  /// [userManagedIdentityClientId] UserManagedIdentity ClientId
  /// [userName] User Name
  /// [volumeMounts] List of volume mounts
  GetWebAppSiteContainerResult({
    this.authType,
    required this.azureApiVersion,
    required this.createdTime,
    this.environmentVariables,
    required this.id,
    required this.image,
    required this.isMain,
    this.kind,
    required this.lastModifiedTime,
    required this.name,
    this.passwordSecret,
    this.startUpCommand,
    this.targetPort,
    required this.type,
    this.userManagedIdentityClientId,
    this.userName,
    this.volumeMounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': ?authType,
      'azureApiVersion': azureApiVersion,
      'createdTime': createdTime,
      'environmentVariables': ?environmentVariables == null ? null : pulumi.Input.encodeList<EnvironmentVariableResponse, Map<String, dynamic>>(environmentVariables!, (value) => value.toMap()),
      'id': id,
      'image': image,
      'isMain': isMain,
      'kind': ?kind,
      'lastModifiedTime': lastModifiedTime,
      'name': name,
      'passwordSecret': ?passwordSecret,
      'startUpCommand': ?startUpCommand,
      'targetPort': ?targetPort,
      'type': type,
      'userManagedIdentityClientId': ?userManagedIdentityClientId,
      'userName': ?userName,
      'volumeMounts': ?volumeMounts == null ? null : pulumi.Input.encodeList<VolumeMountResponse, Map<String, dynamic>>(volumeMounts!, (value) => value.toMap()),
    };
  }

  factory GetWebAppSiteContainerResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppSiteContainerResult(
      authType: map['authType'] == null ? null : map['authType'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      createdTime: map['createdTime'] as String,
      environmentVariables: map['environmentVariables'] == null ? null : pulumi.Input.decodeList<EnvironmentVariableResponse>(map['environmentVariables'], (value) => EnvironmentVariableResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      image: map['image'] as String,
      isMain: map['isMain'] as bool,
      kind: map['kind'] == null ? null : map['kind'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      name: map['name'] as String,
      passwordSecret: map['passwordSecret'] == null ? null : map['passwordSecret'] as String,
      startUpCommand: map['startUpCommand'] == null ? null : map['startUpCommand'] as String,
      targetPort: map['targetPort'] == null ? null : map['targetPort'] as String,
      type: map['type'] as String,
      userManagedIdentityClientId: map['userManagedIdentityClientId'] == null ? null : map['userManagedIdentityClientId'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
      volumeMounts: map['volumeMounts'] == null ? null : pulumi.Input.decodeList<VolumeMountResponse>(map['volumeMounts'], (value) => VolumeMountResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

