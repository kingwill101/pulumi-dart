// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_applications_application_mount_desc.dart';
import 'get_applications_application_oss_mount_detail.dart';

class GetApplicationsApplication {
  /// The ARN of the RAM role required when pulling images across accounts.
  final String acrAssumeRoleArn;
  /// The ID of the ACR EE instance.
  final String acrInstanceId;
  /// Application description information. No more than 1024 characters.
  final String appDescription;
  /// Application Name. Combinations of numbers, letters, and dashes (-) are allowed. It must start with a letter and the maximum length is 36 characters.
  final String appName;
  /// The first ID of the resource.
  final String applicationId;
  /// Mirror start command. The command must be an executable object in the container. For example: sleep. Setting this command will cause the original startup command of the mirror to become invalid.
  final String command;
  /// Mirror startup command parameters. The parameters required for the above start command. For example: 1d.
  final String commandArgs;
  /// ConfigMap mount description.
  final String configMapMountDesc;
  /// The CPU required for each instance, in millicores, cannot be 0.
  final int cpu;
  /// Indicates That the Application of the Creation Time.
  final String createTime;
  /// Custom host mapping in the container. For example: [{"hostName":"samplehost","ip":"127.0.0.1"}].
  final String customHostAlias;
  /// The operating environment used by the Pandora application.
  final String edasContainerVersion;
  /// The virtual switch where the elastic network card of the application instance is located. The switch must be located in the aforementioned VPC. The switch also has a binding relationship with the SAE namespace. If it is left blank, the default is the vSwitch ID bound to the namespace.
  final String envs;
  /// The ID of the Application.
  final String id;
  /// Mirror address. Only Image type applications can configure the mirror address.
  final String imageUrl;
  /// The JAR package starts application parameters. Application default startup command: $JAVA_HOME/bin/java $JarStartOptions -jar $CATALINA_OPTS "$package_path" $JarStartArgs.
  final String jarStartArgs;
  /// The JAR package starts the application option. Application default startup command: $JAVA_HOME/bin/java $JarStartOptions -jar $CATALINA_OPTS "$package_path" $JarStartArgs.
  final String jarStartOptions;
  /// The JDK version that the deployment package depends on. Image type applications are not supported.
  final String jdk;
  /// Container health check. Containers that fail the health check will be shut down and restored. Currently, only the method of issuing commands in the container is supported.
  final String liveness;
  /// The memory required for each instance, in MB, cannot be 0. One-to-one correspondence with CPU.
  final int memory;
  /// The Minimum Available Instance. On the Change Had Promised during the Available Number of Instances to Be.
  final int minReadyInstances;
  /// Mount description information.
  final List<GetApplicationsApplicationMountDesc> mountDescs;
  /// Mount point of NAS in application VPC.
  final String mountHost;
  /// SAE namespace ID. Only namespaces whose names are lowercase letters and dashes (-) are supported, and must start with a letter. The namespace can be obtained by calling the DescribeNamespaceList interface.
  final String namespaceId;
  /// ID of the mounted NAS, Must be in the same region as the cluster. It must have an available mount point creation quota, or its mount point must be on a switch in the VPC. If it is not filled in and the mountDescs field is present, a NAS will be automatically purchased and mounted on the switch in the VPC by default.
  final String nasId;
  /// OSS AccessKey ID.
  final String ossAkId;
  /// OSS  AccessKey Secret.
  final String ossAkSecret;
  /// OSS mount description information.
  final String ossMountDescs;
  /// The OSS mount detail.
  final List<GetApplicationsApplicationOssMountDetail> ossMountDetails;
  /// Application package type. Support FatJar, War and Image.
  final String packageType;
  /// Deployment package address. Only FatJar or War type applications can configure the deployment package address.
  final String packageUrl;
  /// The version number of the deployment package. Required when the Package Type is War and FatJar.
  final String packageVersion;
  /// The PHP application monitors the mount path, and you need to ensure that the PHP server will load the configuration file of this path. You don't need to pay attention to the configuration content, SAE will automatically render the correct configuration file.
  final String phpArmsConfigLocation;
  /// PHP configuration file content.
  final String phpConfig;
  /// PHP application startup configuration mount path, you need to ensure that the PHP server will start using this configuration file.
  final String phpConfigLocation;
  /// Execute the script after startup, the format is like: {"exec":{"command":["cat","/etc/group"]}}.
  final String postStart;
  /// Execute the script before stopping, the format is like: {"exec":{"command":["cat","/etc/group"]}}.
  final String preStop;
  /// Application startup status checks, containers that fail multiple health checks will be shut down and restarted. Containers that do not pass the health check will not receive SLB traffic. For example: {"exec":{"command":["sh","-c","cat /home/admin/start.sh"]},"initialDelaySeconds":30,"periodSeconds":30,"timeoutSeconds ":2}.
  final String readiness;
  final String regionId;
  /// Initial number of instances.
  final int replicas;
  final String repoName;
  final String repoNamespace;
  final String repoOriginType;
  /// Security group ID.
  final String securityGroupId;
  /// SLS  configuration.
  final String slsConfigs;
  /// The status of the resource.
  final String status;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// Graceful offline timeout, the default is 30, the unit is seconds. The value range is 1~60.
  final int terminationGracePeriodSeconds;
  /// Time zone, the default value is Asia/Shanghai.
  final String timezone;
  /// Tomcat file configuration, set to "" or "{}" means to delete the configuration:  useDefaultConfig: Whether to use a custom configuration, if it is true, it means that the custom configuration is not used; if it is false, it means that the custom configuration is used. If you do not use custom configuration, the following parameter configuration will not take effect.  contextInputType: Select the access path of the application.  war: No need to fill in the custom path, the access path of the application is the WAR package name. root: No need to fill in the custom path, the access path of the application is /. custom: You need to fill in the custom path in the custom path below. contextPath: custom path, this parameter only needs to be configured when the contextInputType type is custom.  httpPort: The port range is 1024~65535. Ports less than 1024 need Root permission to operate. Because the container is configured with Admin permissions, please fill in a port greater than 1024. If not configured, the default is 8080. maxThreads: Configure the number of connections in the connection pool, the default size is 400. uriEncoding: Tomcat encoding format, including UTF-8, ISO-8859-1, GBK and GB2312. If not set, the default is ISO-8859-1. useBodyEncoding: Whether to use BodyEncoding for URL.
  final String tomcatConfig;
  /// The VPC corresponding to the SAE namespace. In SAE, a namespace can only correspond to one VPC and cannot be modified. Creating a SAE application in the namespace for the first time will form a binding relationship. Multiple namespaces can correspond to a VPC. If you leave it blank, it will default to the VPC ID bound to the namespace.
  final String vpcId;
  /// The vswitch id.
  final String vswitchId;
  /// WAR package launch application option. Application default startup command: java $JAVA_OPTS $CATALINA_OPTS [-Options] org.apache.catalina.startup.Bootstrap "$@" start.
  final String warStartOptions;
  /// The version of tomcat that the deployment package depends on. Image type applications are not supported.
  final String webContainer;

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
      'mountDescs': pulumi.Input.encodeList<GetApplicationsApplicationMountDesc, Map<String, dynamic>>(mountDescs, (value) => value.toMap()),
      'mountHost': mountHost,
      'namespaceId': namespaceId,
      'nasId': nasId,
      'ossAkId': ossAkId,
      'ossAkSecret': ossAkSecret,
      'ossMountDescs': ossMountDescs,
      'ossMountDetails': pulumi.Input.encodeList<GetApplicationsApplicationOssMountDetail, Map<String, dynamic>>(ossMountDetails, (value) => value.toMap()),
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
      acrAssumeRoleArn: map['acrAssumeRoleArn'] as String,
      acrInstanceId: map['acrInstanceId'] as String,
      appDescription: map['appDescription'] as String,
      appName: map['appName'] as String,
      applicationId: map['applicationId'] as String,
      command: map['command'] as String,
      commandArgs: map['commandArgs'] as String,
      configMapMountDesc: map['configMapMountDesc'] as String,
      cpu: map['cpu'] as int,
      createTime: map['createTime'] as String,
      customHostAlias: map['customHostAlias'] as String,
      edasContainerVersion: map['edasContainerVersion'] as String,
      envs: map['envs'] as String,
      id: map['id'] as String,
      imageUrl: map['imageUrl'] as String,
      jarStartArgs: map['jarStartArgs'] as String,
      jarStartOptions: map['jarStartOptions'] as String,
      jdk: map['jdk'] as String,
      liveness: map['liveness'] as String,
      memory: map['memory'] as int,
      minReadyInstances: map['minReadyInstances'] as int,
      mountDescs: pulumi.Input.decodeList<GetApplicationsApplicationMountDesc>(map['mountDescs'], (value) => GetApplicationsApplicationMountDesc.fromMap((value as Map).cast<String, dynamic>())),
      mountHost: map['mountHost'] as String,
      namespaceId: map['namespaceId'] as String,
      nasId: map['nasId'] as String,
      ossAkId: map['ossAkId'] as String,
      ossAkSecret: map['ossAkSecret'] as String,
      ossMountDescs: map['ossMountDescs'] as String,
      ossMountDetails: pulumi.Input.decodeList<GetApplicationsApplicationOssMountDetail>(map['ossMountDetails'], (value) => GetApplicationsApplicationOssMountDetail.fromMap((value as Map).cast<String, dynamic>())),
      packageType: map['packageType'] as String,
      packageUrl: map['packageUrl'] as String,
      packageVersion: map['packageVersion'] as String,
      phpArmsConfigLocation: map['phpArmsConfigLocation'] as String,
      phpConfig: map['phpConfig'] as String,
      phpConfigLocation: map['phpConfigLocation'] as String,
      postStart: map['postStart'] as String,
      preStop: map['preStop'] as String,
      readiness: map['readiness'] as String,
      regionId: map['regionId'] as String,
      replicas: map['replicas'] as int,
      repoName: map['repoName'] as String,
      repoNamespace: map['repoNamespace'] as String,
      repoOriginType: map['repoOriginType'] as String,
      securityGroupId: map['securityGroupId'] as String,
      slsConfigs: map['slsConfigs'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      terminationGracePeriodSeconds: map['terminationGracePeriodSeconds'] as int,
      timezone: map['timezone'] as String,
      tomcatConfig: map['tomcatConfig'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      warStartOptions: map['warStartOptions'] as String,
      webContainer: map['webContainer'] as String,
    );
  }
}

