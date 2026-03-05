// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_applications_application_mount_desc.dart';
import 'get_applications_application_oss_mount_detail.dart';

class GetApplicationsApplication {
  /// The ARN of the RAM role required when pulling images across accounts.
  final pulumi.Input<String> acrAssumeRoleArn;
  /// The ID of the ACR EE instance.
  final pulumi.Input<String> acrInstanceId;
  /// Application description information. No more than 1024 characters.
  final pulumi.Input<String> appDescription;
  /// Application Name. Combinations of numbers, letters, and dashes (-) are allowed. It must start with a letter and the maximum length is 36 characters.
  final pulumi.Input<String> appName;
  /// The first ID of the resource.
  final pulumi.Input<String> applicationId;
  /// Mirror start command. The command must be an executable object in the container. For example: sleep. Setting this command will cause the original startup command of the mirror to become invalid.
  final pulumi.Input<String> command;
  /// Mirror startup command parameters. The parameters required for the above start command. For example: 1d.
  final pulumi.Input<String> commandArgs;
  /// ConfigMap mount description.
  final pulumi.Input<String> configMapMountDesc;
  /// The CPU required for each instance, in millicores, cannot be 0.
  final pulumi.Input<int> cpu;
  /// Indicates That the Application of the Creation Time.
  final pulumi.Input<String> createTime;
  /// Custom host mapping in the container. For example: [{"hostName":"samplehost","ip":"127.0.0.1"}].
  final pulumi.Input<String> customHostAlias;
  /// The operating environment used by the Pandora application.
  final pulumi.Input<String> edasContainerVersion;
  /// The virtual switch where the elastic network card of the application instance is located. The switch must be located in the aforementioned VPC. The switch also has a binding relationship with the SAE namespace. If it is left blank, the default is the vSwitch ID bound to the namespace.
  final pulumi.Input<String> envs;
  /// The ID of the Application.
  final pulumi.Input<String> id;
  /// Mirror address. Only Image type applications can configure the mirror address.
  final pulumi.Input<String> imageUrl;
  /// The JAR package starts application parameters. Application default startup command: $JAVA_HOME/bin/java $JarStartOptions -jar $CATALINA_OPTS "$package_path" $JarStartArgs.
  final pulumi.Input<String> jarStartArgs;
  /// The JAR package starts the application option. Application default startup command: $JAVA_HOME/bin/java $JarStartOptions -jar $CATALINA_OPTS "$package_path" $JarStartArgs.
  final pulumi.Input<String> jarStartOptions;
  /// The JDK version that the deployment package depends on. Image type applications are not supported.
  final pulumi.Input<String> jdk;
  /// Container health check. Containers that fail the health check will be shut down and restored. Currently, only the method of issuing commands in the container is supported.
  final pulumi.Input<String> liveness;
  /// The memory required for each instance, in MB, cannot be 0. One-to-one correspondence with CPU.
  final pulumi.Input<int> memory;
  /// The Minimum Available Instance. On the Change Had Promised during the Available Number of Instances to Be.
  final pulumi.Input<int> minReadyInstances;
  /// Mount description information.
  final pulumi.Input<List<GetApplicationsApplicationMountDesc>> mountDescs;
  /// Mount point of NAS in application VPC.
  final pulumi.Input<String> mountHost;
  /// SAE namespace ID. Only namespaces whose names are lowercase letters and dashes (-) are supported, and must start with a letter. The namespace can be obtained by calling the DescribeNamespaceList interface.
  final pulumi.Input<String> namespaceId;
  /// ID of the mounted NAS, Must be in the same region as the cluster. It must have an available mount point creation quota, or its mount point must be on a switch in the VPC. If it is not filled in and the mountDescs field is present, a NAS will be automatically purchased and mounted on the switch in the VPC by default.
  final pulumi.Input<String> nasId;
  /// OSS AccessKey ID.
  final pulumi.Input<String> ossAkId;
  /// OSS  AccessKey Secret.
  final pulumi.Input<String> ossAkSecret;
  /// OSS mount description information.
  final pulumi.Input<String> ossMountDescs;
  /// The OSS mount detail.
  final pulumi.Input<List<GetApplicationsApplicationOssMountDetail>> ossMountDetails;
  /// Application package type. Support FatJar, War and Image.
  final pulumi.Input<String> packageType;
  /// Deployment package address. Only FatJar or War type applications can configure the deployment package address.
  final pulumi.Input<String> packageUrl;
  /// The version number of the deployment package. Required when the Package Type is War and FatJar.
  final pulumi.Input<String> packageVersion;
  /// The PHP application monitors the mount path, and you need to ensure that the PHP server will load the configuration file of this path. You don't need to pay attention to the configuration content, SAE will automatically render the correct configuration file.
  final pulumi.Input<String> phpArmsConfigLocation;
  /// PHP configuration file content.
  final pulumi.Input<String> phpConfig;
  /// PHP application startup configuration mount path, you need to ensure that the PHP server will start using this configuration file.
  final pulumi.Input<String> phpConfigLocation;
  /// Execute the script after startup, the format is like: {"exec":{"command":["cat","/etc/group"]}}.
  final pulumi.Input<String> postStart;
  /// Execute the script before stopping, the format is like: {"exec":{"command":["cat","/etc/group"]}}.
  final pulumi.Input<String> preStop;
  /// Application startup status checks, containers that fail multiple health checks will be shut down and restarted. Containers that do not pass the health check will not receive SLB traffic. For example: {"exec":{"command":["sh","-c","cat /home/admin/start.sh"]},"initialDelaySeconds":30,"periodSeconds":30,"timeoutSeconds ":2}.
  final pulumi.Input<String> readiness;
  final pulumi.Input<String> regionId;
  /// Initial number of instances.
  final pulumi.Input<int> replicas;
  final pulumi.Input<String> repoName;
  final pulumi.Input<String> repoNamespace;
  final pulumi.Input<String> repoOriginType;
  /// Security group ID.
  final pulumi.Input<String> securityGroupId;
  /// SLS  configuration.
  final pulumi.Input<String> slsConfigs;
  /// The status of the resource.
  final pulumi.Input<String> status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// Graceful offline timeout, the default is 30, the unit is seconds. The value range is 1~60.
  final pulumi.Input<int> terminationGracePeriodSeconds;
  /// Time zone, the default value is Asia/Shanghai.
  final pulumi.Input<String> timezone;
  /// Tomcat file configuration, set to "" or "{}" means to delete the configuration:  useDefaultConfig: Whether to use a custom configuration, if it is true, it means that the custom configuration is not used; if it is false, it means that the custom configuration is used. If you do not use custom configuration, the following parameter configuration will not take effect.  contextInputType: Select the access path of the application.  war: No need to fill in the custom path, the access path of the application is the WAR package name. root: No need to fill in the custom path, the access path of the application is /. custom: You need to fill in the custom path in the custom path below. contextPath: custom path, this parameter only needs to be configured when the contextInputType type is custom.  httpPort: The port range is 1024~65535. Ports less than 1024 need Root permission to operate. Because the container is configured with Admin permissions, please fill in a port greater than 1024. If not configured, the default is 8080. maxThreads: Configure the number of connections in the connection pool, the default size is 400. uriEncoding: Tomcat encoding format, including UTF-8, ISO-8859-1, GBK and GB2312. If not set, the default is ISO-8859-1. useBodyEncoding: Whether to use BodyEncoding for URL.
  final pulumi.Input<String> tomcatConfig;
  /// The VPC corresponding to the SAE namespace. In SAE, a namespace can only correspond to one VPC and cannot be modified. Creating a SAE application in the namespace for the first time will form a binding relationship. Multiple namespaces can correspond to a VPC. If you leave it blank, it will default to the VPC ID bound to the namespace.
  final pulumi.Input<String> vpcId;
  /// The vswitch id.
  final pulumi.Input<String> vswitchId;
  /// WAR package launch application option. Application default startup command: java $JAVA_OPTS $CATALINA_OPTS [-Options] org.apache.catalina.startup.Bootstrap "$@" start.
  final pulumi.Input<String> warStartOptions;
  /// The version of tomcat that the deployment package depends on. Image type applications are not supported.
  final pulumi.Input<String> webContainer;

  /// Creates a new [GetApplicationsApplication].
  /// [acrAssumeRoleArn] The ARN of the RAM role required when pulling images across accounts.
  /// [acrInstanceId] The ID of the ACR EE instance.
  /// [appDescription] Application description information. No more than 1024 characters.
  /// [appName] Application Name. Combinations of numbers, letters, and dashes (-) are allowed. It must start with a letter and the maximum length is 36 characters.
  /// [applicationId] The first ID of the resource.
  /// [command] Mirror start command. The command must be an executable object in the container. For example: sleep. Setting this command will cause the original startup command of the mirror to become invalid.
  /// [commandArgs] Mirror startup command parameters. The parameters required for the above start command. For example: 1d.
  /// [configMapMountDesc] ConfigMap mount description.
  /// [cpu] The CPU required for each instance, in millicores, cannot be 0.
  /// [createTime] Indicates That the Application of the Creation Time.
  /// [customHostAlias] Custom host mapping in the container. For example: [{"hostName":"samplehost","ip":"127.0.0.1"}].
  /// [edasContainerVersion] The operating environment used by the Pandora application.
  /// [envs] The virtual switch where the elastic network card of the application instance is located. The switch must be located in the aforementioned VPC. The switch also has a binding relationship with the SAE namespace. If it is left blank, the default is the vSwitch ID bound to the namespace.
  /// [id] The ID of the Application.
  /// [imageUrl] Mirror address. Only Image type applications can configure the mirror address.
  /// [jarStartArgs] The JAR package starts application parameters. Application default startup command: $JAVA_HOME/bin/java $JarStartOptions -jar $CATALINA_OPTS "$package_path" $JarStartArgs.
  /// [jarStartOptions] The JAR package starts the application option. Application default startup command: $JAVA_HOME/bin/java $JarStartOptions -jar $CATALINA_OPTS "$package_path" $JarStartArgs.
  /// [jdk] The JDK version that the deployment package depends on. Image type applications are not supported.
  /// [liveness] Container health check. Containers that fail the health check will be shut down and restored. Currently, only the method of issuing commands in the container is supported.
  /// [memory] The memory required for each instance, in MB, cannot be 0. One-to-one correspondence with CPU.
  /// [minReadyInstances] The Minimum Available Instance. On the Change Had Promised during the Available Number of Instances to Be.
  /// [mountDescs] Mount description information.
  /// [mountHost] Mount point of NAS in application VPC.
  /// [namespaceId] SAE namespace ID. Only namespaces whose names are lowercase letters and dashes (-) are supported, and must start with a letter. The namespace can be obtained by calling the DescribeNamespaceList interface.
  /// [nasId] ID of the mounted NAS, Must be in the same region as the cluster. It must have an available mount point creation quota, or its mount point must be on a switch in the VPC. If it is not filled in and the mountDescs field is present, a NAS will be automatically purchased and mounted on the switch in the VPC by default.
  /// [ossAkId] OSS AccessKey ID.
  /// [ossAkSecret] OSS  AccessKey Secret.
  /// [ossMountDescs] OSS mount description information.
  /// [ossMountDetails] The OSS mount detail.
  /// [packageType] Application package type. Support FatJar, War and Image.
  /// [packageUrl] Deployment package address. Only FatJar or War type applications can configure the deployment package address.
  /// [packageVersion] The version number of the deployment package. Required when the Package Type is War and FatJar.
  /// [phpArmsConfigLocation] The PHP application monitors the mount path, and you need to ensure that the PHP server will load the configuration file of this path. You don't need to pay attention to the configuration content, SAE will automatically render the correct configuration file.
  /// [phpConfig] PHP configuration file content.
  /// [phpConfigLocation] PHP application startup configuration mount path, you need to ensure that the PHP server will start using this configuration file.
  /// [postStart] Execute the script after startup, the format is like: {"exec":{"command":["cat","/etc/group"]}}.
  /// [preStop] Execute the script before stopping, the format is like: {"exec":{"command":["cat","/etc/group"]}}.
  /// [readiness] Application startup status checks, containers that fail multiple health checks will be shut down and restarted. Containers that do not pass the health check will not receive SLB traffic. For example: {"exec":{"command":["sh","-c","cat /home/admin/start.sh"]},"initialDelaySeconds":30,"periodSeconds":30,"timeoutSeconds ":2}.
  /// [regionId] Required.
  /// [replicas] Initial number of instances.
  /// [repoName] Required.
  /// [repoNamespace] Required.
  /// [repoOriginType] Required.
  /// [securityGroupId] Security group ID.
  /// [slsConfigs] SLS  configuration.
  /// [status] The status of the resource.
  /// [tags] A mapping of tags to assign to the resource.
  /// [terminationGracePeriodSeconds] Graceful offline timeout, the default is 30, the unit is seconds. The value range is 1~60.
  /// [timezone] Time zone, the default value is Asia/Shanghai.
  /// [tomcatConfig] Tomcat file configuration, set to "" or "{}" means to delete the configuration:  useDefaultConfig: Whether to use a custom configuration, if it is true, it means that the custom configuration is not used; if it is false, it means that the custom configuration is used. If you do not use custom configuration, the following parameter configuration will not take effect.  contextInputType: Select the access path of the application.  war: No need to fill in the custom path, the access path of the application is the WAR package name. root: No need to fill in the custom path, the access path of the application is /. custom: You need to fill in the custom path in the custom path below. contextPath: custom path, this parameter only needs to be configured when the contextInputType type is custom.  httpPort: The port range is 1024~65535. Ports less than 1024 need Root permission to operate. Because the container is configured with Admin permissions, please fill in a port greater than 1024. If not configured, the default is 8080. maxThreads: Configure the number of connections in the connection pool, the default size is 400. uriEncoding: Tomcat encoding format, including UTF-8, ISO-8859-1, GBK and GB2312. If not set, the default is ISO-8859-1. useBodyEncoding: Whether to use BodyEncoding for URL.
  /// [vpcId] The VPC corresponding to the SAE namespace. In SAE, a namespace can only correspond to one VPC and cannot be modified. Creating a SAE application in the namespace for the first time will form a binding relationship. Multiple namespaces can correspond to a VPC. If you leave it blank, it will default to the VPC ID bound to the namespace.
  /// [vswitchId] The vswitch id.
  /// [warStartOptions] WAR package launch application option. Application default startup command: java $JAVA_OPTS $CATALINA_OPTS [-Options] org.apache.catalina.startup.Bootstrap "$@" start.
  /// [webContainer] The version of tomcat that the deployment package depends on. Image type applications are not supported.
  GetApplicationsApplication({
    required this.acrAssumeRoleArn,
    required this.acrInstanceId,
    required this.appDescription,
    required this.appName,
    required this.applicationId,
    required this.command,
    required this.commandArgs,
    required this.configMapMountDesc,
    required this.cpu,
    required this.createTime,
    required this.customHostAlias,
    required this.edasContainerVersion,
    required this.envs,
    required this.id,
    required this.imageUrl,
    required this.jarStartArgs,
    required this.jarStartOptions,
    required this.jdk,
    required this.liveness,
    required this.memory,
    required this.minReadyInstances,
    required this.mountDescs,
    required this.mountHost,
    required this.namespaceId,
    required this.nasId,
    required this.ossAkId,
    required this.ossAkSecret,
    required this.ossMountDescs,
    required this.ossMountDetails,
    required this.packageType,
    required this.packageUrl,
    required this.packageVersion,
    required this.phpArmsConfigLocation,
    required this.phpConfig,
    required this.phpConfigLocation,
    required this.postStart,
    required this.preStop,
    required this.readiness,
    required this.regionId,
    required this.replicas,
    required this.repoName,
    required this.repoNamespace,
    required this.repoOriginType,
    required this.securityGroupId,
    required this.slsConfigs,
    required this.status,
    required this.tags,
    required this.terminationGracePeriodSeconds,
    required this.timezone,
    required this.tomcatConfig,
    required this.vpcId,
    required this.vswitchId,
    required this.warStartOptions,
    required this.webContainer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acrAssumeRoleArn': acrAssumeRoleArn,
      'acrInstanceId': acrInstanceId,
      'appDescription': appDescription,
      'appName': appName,
      'applicationId': applicationId,
      'command': command,
      'commandArgs': commandArgs,
      'configMapMountDesc': configMapMountDesc,
      'cpu': cpu,
      'createTime': createTime,
      'customHostAlias': customHostAlias,
      'edasContainerVersion': edasContainerVersion,
      'envs': envs,
      'id': id,
      'imageUrl': imageUrl,
      'jarStartArgs': jarStartArgs,
      'jarStartOptions': jarStartOptions,
      'jdk': jdk,
      'liveness': liveness,
      'memory': memory,
      'minReadyInstances': minReadyInstances,
      'mountDescs': pulumi.Input.mapInputValue<List<GetApplicationsApplicationMountDesc>, List<Map<String, dynamic>>>(mountDescs, (value) => pulumi.Input.encodeList<GetApplicationsApplicationMountDesc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mountHost': mountHost,
      'namespaceId': namespaceId,
      'nasId': nasId,
      'ossAkId': ossAkId,
      'ossAkSecret': ossAkSecret,
      'ossMountDescs': ossMountDescs,
      'ossMountDetails': pulumi.Input.mapInputValue<List<GetApplicationsApplicationOssMountDetail>, List<Map<String, dynamic>>>(ossMountDetails, (value) => pulumi.Input.encodeList<GetApplicationsApplicationOssMountDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'packageType': packageType,
      'packageUrl': packageUrl,
      'packageVersion': packageVersion,
      'phpArmsConfigLocation': phpArmsConfigLocation,
      'phpConfig': phpConfig,
      'phpConfigLocation': phpConfigLocation,
      'postStart': postStart,
      'preStop': preStop,
      'readiness': readiness,
      'regionId': regionId,
      'replicas': replicas,
      'repoName': repoName,
      'repoNamespace': repoNamespace,
      'repoOriginType': repoOriginType,
      'securityGroupId': securityGroupId,
      'slsConfigs': slsConfigs,
      'status': status,
      'tags': tags,
      'terminationGracePeriodSeconds': terminationGracePeriodSeconds,
      'timezone': timezone,
      'tomcatConfig': tomcatConfig,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'warStartOptions': warStartOptions,
      'webContainer': webContainer,
    };
  }

  factory GetApplicationsApplication.fromMap(Map<String, dynamic> map) {
    return GetApplicationsApplication(
      acrAssumeRoleArn: pulumi.Input.fromValue(map['acrAssumeRoleArn'] as String),
      acrInstanceId: pulumi.Input.fromValue(map['acrInstanceId'] as String),
      appDescription: pulumi.Input.fromValue(map['appDescription'] as String),
      appName: pulumi.Input.fromValue(map['appName'] as String),
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      command: pulumi.Input.fromValue(map['command'] as String),
      commandArgs: pulumi.Input.fromValue(map['commandArgs'] as String),
      configMapMountDesc: pulumi.Input.fromValue(map['configMapMountDesc'] as String),
      cpu: pulumi.Input.fromValue(map['cpu'] as int),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      customHostAlias: pulumi.Input.fromValue(map['customHostAlias'] as String),
      edasContainerVersion: pulumi.Input.fromValue(map['edasContainerVersion'] as String),
      envs: pulumi.Input.fromValue(map['envs'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      imageUrl: pulumi.Input.fromValue(map['imageUrl'] as String),
      jarStartArgs: pulumi.Input.fromValue(map['jarStartArgs'] as String),
      jarStartOptions: pulumi.Input.fromValue(map['jarStartOptions'] as String),
      jdk: pulumi.Input.fromValue(map['jdk'] as String),
      liveness: pulumi.Input.fromValue(map['liveness'] as String),
      memory: pulumi.Input.fromValue(map['memory'] as int),
      minReadyInstances: pulumi.Input.fromValue(map['minReadyInstances'] as int),
      mountDescs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetApplicationsApplicationMountDesc>(map['mountDescs']!, (value) => GetApplicationsApplicationMountDesc.fromMap((value as Map).cast<String, dynamic>()))),
      mountHost: pulumi.Input.fromValue(map['mountHost'] as String),
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
      nasId: pulumi.Input.fromValue(map['nasId'] as String),
      ossAkId: pulumi.Input.fromValue(map['ossAkId'] as String),
      ossAkSecret: pulumi.Input.fromValue(map['ossAkSecret'] as String),
      ossMountDescs: pulumi.Input.fromValue(map['ossMountDescs'] as String),
      ossMountDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<GetApplicationsApplicationOssMountDetail>(map['ossMountDetails']!, (value) => GetApplicationsApplicationOssMountDetail.fromMap((value as Map).cast<String, dynamic>()))),
      packageType: pulumi.Input.fromValue(map['packageType'] as String),
      packageUrl: pulumi.Input.fromValue(map['packageUrl'] as String),
      packageVersion: pulumi.Input.fromValue(map['packageVersion'] as String),
      phpArmsConfigLocation: pulumi.Input.fromValue(map['phpArmsConfigLocation'] as String),
      phpConfig: pulumi.Input.fromValue(map['phpConfig'] as String),
      phpConfigLocation: pulumi.Input.fromValue(map['phpConfigLocation'] as String),
      postStart: pulumi.Input.fromValue(map['postStart'] as String),
      preStop: pulumi.Input.fromValue(map['preStop'] as String),
      readiness: pulumi.Input.fromValue(map['readiness'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      replicas: pulumi.Input.fromValue(map['replicas'] as int),
      repoName: pulumi.Input.fromValue(map['repoName'] as String),
      repoNamespace: pulumi.Input.fromValue(map['repoNamespace'] as String),
      repoOriginType: pulumi.Input.fromValue(map['repoOriginType'] as String),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      slsConfigs: pulumi.Input.fromValue(map['slsConfigs'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      terminationGracePeriodSeconds: pulumi.Input.fromValue(map['terminationGracePeriodSeconds'] as int),
      timezone: pulumi.Input.fromValue(map['timezone'] as String),
      tomcatConfig: pulumi.Input.fromValue(map['tomcatConfig'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      warStartOptions: pulumi.Input.fromValue(map['warStartOptions'] as String),
      webContainer: pulumi.Input.fromValue(map['webContainer'] as String),
    );
  }
}

