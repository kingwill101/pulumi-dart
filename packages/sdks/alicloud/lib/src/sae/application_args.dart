// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_config_map_mount_desc_v2.dart';
import 'application_custom_host_alias_v2.dart';
import 'application_kafka_configs.dart';
import 'application_liveness_v2.dart';
import 'application_nas_config.dart';
import 'application_oss_mount_descs_v2.dart';
import 'application_post_start_v2.dart';
import 'application_pre_stop_v2.dart';
import 'application_pvtz_discovery_svc.dart';
import 'application_readiness_v2.dart';
import 'application_tomcat_config_v2.dart';
import 'application_update_strategy_v2.dart';

/// {@template pulumi_sae_application_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_sae_application_application_args_doc}
class ApplicationArgs {
  /// The ARN of the RAM role required when pulling images across accounts. Only necessary if the image_url is pointing to an ACR EE instance.
  final pulumi.Input<String>? acrAssumeRoleArn;
  /// The ID of the ACR EE instance. Only necessary if the image_url is pointing to an ACR EE instance.
  final pulumi.Input<String>? acrInstanceId;
  /// Application description information. No more than 1024 characters. **NOTE:** From version 1.211.0, `app_description` can be modified.
  final pulumi.Input<String>? appDescription;
  /// Application Name. Combinations of numbers, letters, and dashes (-) are allowed. It must start with a letter and the maximum length is 36 characters.
  final pulumi.Input<String> appName;
  /// The auto config. Valid values: `true`, `false`.
  final pulumi.Input<bool>? autoConfig;
  /// The auto enable application scaling rule. Valid values: `true`, `false`.
  final pulumi.Input<bool>? autoEnableApplicationScalingRule;
  /// The batch wait time.
  final pulumi.Input<int>? batchWaitTime;
  /// The change order desc.
  final pulumi.Input<String>? changeOrderDesc;
  /// Mirror start command. The command must be an executable object in the container. For example: sleep. Setting this command will cause the original startup command of the mirror to become invalid.
  final pulumi.Input<String>? command;
  /// Mirror startup command parameters. The parameters required for the above start command. For example: 1d. **NOTE:** Field `command_args` has been deprecated from provider version 1.211.0. New field `command_args_v2` instead.
  final pulumi.Input<String>? commandArgs;
  /// The parameters of the image startup command.
  final pulumi.Input<List<String>>? commandArgsV2s;
  /// ConfigMap mount description. **NOTE:** Field `config_map_mount_desc` has been deprecated from provider version 1.211.0. New field `config_map_mount_desc_v2` instead.
  final pulumi.Input<String>? configMapMountDesc;
  /// The description of the ConfigMap that is mounted to the application. A ConfigMap that is created on the ConfigMaps page of a namespace is used to inject configurations into containers. See `config_map_mount_desc_v2` below.
  final pulumi.Input<List<ApplicationConfigMapMountDescV2>>? configMapMountDescV2s;
  /// The CPU required for each instance, in millicores, cannot be 0. Valid values: `500`, `1000`, `2000`, `4000`, `8000`, `16000`, `32000`.
  final pulumi.Input<int>? cpu;
  /// Custom host mapping in the container. For example: [{`hostName`:`samplehost`,`ip`:`127.0.0.1`}]. **NOTE:** Field `custom_host_alias` has been deprecated from provider version 1.211.0. New field `custom_host_alias_v2` instead.
  final pulumi.Input<String>? customHostAlias;
  /// The custom mapping between the hostname and IP address in the container. See `custom_host_alias_v2` below.
  final pulumi.Input<List<ApplicationCustomHostAliasV2>>? customHostAliasV2s;
  /// The deploy. Valid values: `true`, `false`.
  final pulumi.Input<bool>? deploy;
  /// The operating environment used by the Pandora application.
  final pulumi.Input<String>? edasContainerVersion;
  /// The enable ahas. Valid values: `true`, `false`.
  final pulumi.Input<String>? enableAhas;
  /// The enable grey tag route. Default value: `false`. Valid values:
  final pulumi.Input<bool>? enableGreyTagRoute;
  /// Container environment variable parameters. For example,`	[{"name":"envtmp","value":"0"}]`. The value description is as follows:
  final pulumi.Input<String>? envs;
  /// The ID of the corresponding Secret.
  final pulumi.Input<String>? imagePullSecrets;
  /// Mirror address. Only Image type applications can configure the mirror address.
  final pulumi.Input<String>? imageUrl;
  /// The JAR package starts application parameters. Application default startup command: $JAVA_HOME/bin/java $JarStartOptions -jar $CATALINA_OPTS "$package_path" $JarStartArgs.
  final pulumi.Input<String>? jarStartArgs;
  /// The JAR package starts the application option. Application default startup command: $JAVA_HOME/bin/java $JarStartOptions -jar $CATALINA_OPTS "$package_path" $JarStartArgs.
  final pulumi.Input<String>? jarStartOptions;
  /// The JDK version that the deployment package depends on. Image type applications are not supported.
  final pulumi.Input<String>? jdk;
  /// The logging configurations of ApsaraMQ for Kafka. See `kafka_configs` below.
  final pulumi.Input<ApplicationKafkaConfigs>? kafkaConfigs;
  /// Container health check. Containers that fail the health check will be shut down and restored. Currently, only the method of issuing commands in the container is supported.
  /// **NOTE:** Field `liveness` has been deprecated from provider version 1.211.0. New field `liveness_v2` instead.
  final pulumi.Input<String>? liveness;
  /// The liveness check settings of the container. See `liveness_v2` below.
  final pulumi.Input<ApplicationLivenessV2>? livenessV2;
  /// The memory required for each instance, in MB, cannot be 0. One-to-one correspondence with CPU. Valid values: `1024`, `2048`, `4096`, `8192`, `12288`, `16384`, `24576`, `32768`, `65536`, `131072`.
  final pulumi.Input<int>? memory;
  /// Select the Nacos registry. Valid values: `0`, `1`, `2`.
  final pulumi.Input<String>? microRegistration;
  /// Minimum Survival Instance Percentage. **NOTE:** When `min_ready_instances` and `min_ready_instance_ratio` are passed at the same time, and the value of `min_ready_instance_ratio` is not -1, the `min_ready_instance_ratio` parameter shall prevail. Assuming that `min_ready_instances` is 5 and `min_ready_instance_ratio` is 50, 50 is used to calculate the minimum number of surviving instances.The value description is as follows:
  /// * `-1`: Initialization value, indicating that percentages are not used.
  /// * `0~100`: The unit is percentage, rounded up. For example, if it is set to 50%, if there are currently 5 instances, the minimum number of surviving instances is 3.
  final pulumi.Input<int>? minReadyInstanceRatio;
  /// The Minimum Available Instance. On the Change Had Promised during the Available Number of Instances to Be.
  final pulumi.Input<int>? minReadyInstances;
  /// SAE namespace ID. Only namespaces whose names are lowercase letters and dashes (-) are supported, and must start with a letter. The namespace can be obtained by calling the DescribeNamespaceList interface.
  final pulumi.Input<String>? namespaceId;
  /// The configurations for mounting the NAS file system. See `nas_configs` below.
  final pulumi.Input<List<ApplicationNasConfig>>? nasConfigs;
  /// OSS AccessKey ID.
  final pulumi.Input<String>? ossAkId;
  /// OSS  AccessKey Secret.
  final pulumi.Input<String>? ossAkSecret;
  /// OSS mount description information. **NOTE:** Field `oss_mount_descs` has been deprecated from provider version 1.211.0. New field `oss_mount_descs_v2` instead.
  final pulumi.Input<String>? ossMountDescs;
  /// The description of the mounted Object Storage Service (OSS) bucket. See `oss_mount_descs_v2` below.
  final pulumi.Input<List<ApplicationOssMountDescsV2>>? ossMountDescsV2s;
  /// Application package type. Valid values: `FatJar`, `War`, `Image`, `PhpZip`, `IMAGE_PHP_5_4`, `IMAGE_PHP_5_4_ALPINE`, `IMAGE_PHP_5_5`, `IMAGE_PHP_5_5_ALPINE`, `IMAGE_PHP_5_6`, `IMAGE_PHP_5_6_ALPINE`, `IMAGE_PHP_7_0`, `IMAGE_PHP_7_0_ALPINE`, `IMAGE_PHP_7_1`, `IMAGE_PHP_7_1_ALPINE`, `IMAGE_PHP_7_2`, `IMAGE_PHP_7_2_ALPINE`, `IMAGE_PHP_7_3`, `IMAGE_PHP_7_3_ALPINE`, `PythonZip`.
  final pulumi.Input<String> packageType;
  /// Deployment package address. Only FatJar or War type applications can configure the deployment package address.
  final pulumi.Input<String>? packageUrl;
  /// The version number of the deployment package. Required when the Package Type is War and FatJar.
  final pulumi.Input<String>? packageVersion;
  /// The Php environment.
  final pulumi.Input<String>? php;
  /// The PHP application monitors the mount path, and you need to ensure that the PHP server will load the configuration file of this path. You don't need to pay attention to the configuration content, SAE will automatically render the correct configuration file.
  final pulumi.Input<String>? phpArmsConfigLocation;
  /// PHP configuration file content.
  final pulumi.Input<String>? phpConfig;
  /// PHP application startup configuration mount path, you need to ensure that the PHP server will start using this configuration file.
  final pulumi.Input<String>? phpConfigLocation;
  /// Execute the script after startup, the format is like: {`exec`:{`command`:[`cat`,"/etc/group"]}}. **NOTE:** Field `post_start` has been deprecated from provider version 1.211.0. New field `post_start_v2` instead.
  final pulumi.Input<String>? postStart;
  /// The script that is run immediately after the container is started. See `post_start_v2` below.
  final pulumi.Input<ApplicationPostStartV2>? postStartV2;
  /// Execute the script before stopping, the format is like: {`exec`:{`command`:[`cat`,"/etc/group"]}}. **NOTE:** Field `pre_stop` has been deprecated from provider version 1.211.0. New field `pre_stop_v2` instead.
  final pulumi.Input<String>? preStop;
  /// The script that is run before the container is stopped. See `pre_stop_v2` below.
  final pulumi.Input<ApplicationPreStopV2>? preStopV2;
  /// The programming language that is used to create the application. Valid values: `java`, `php`, `other`.
  final pulumi.Input<String>? programmingLanguage;
  /// The configurations of Kubernetes Service-based service registration and discovery. See `pvtz_discovery_svc` below.
  final pulumi.Input<ApplicationPvtzDiscoverySvc>? pvtzDiscoverySvc;
  /// Application startup status checks, containers that fail multiple health checks will be shut down and restarted. Containers that do not pass the health check will not receive SLB traffic. For example: {`exec`:{`command`:[`sh`,"-c","cat /home/admin/start.sh"]},`initialDelaySeconds`:30,`periodSeconds`:30,"timeoutSeconds ":2}. Valid values: `command`, `initialDelaySeconds`, `periodSeconds`, `timeoutSeconds`.
  /// **NOTE:** Field `readiness` has been deprecated from provider version 1.211.0. New field `readiness_v2` instead.
  final pulumi.Input<String>? readiness;
  /// The readiness check settings of the container. If a container fails this health check multiple times, the container is stopped and then restarted. See `readiness_v2` below.
  final pulumi.Input<ApplicationReadinessV2>? readinessV2;
  /// Initial number of instances.
  final pulumi.Input<int> replicas;
  /// Security group ID.
  final pulumi.Input<String>? securityGroupId;
  /// Configuration for log collection to SLS. Valid parameter descriptions are as follows:
  /// * `projectName`: Configures the project name on SLS.
  /// * `logDir`: Path to the logs.
  /// * `logType`: Type of logs. stdout indicates container standard output logs, and only one can be set; if not set, it means collecting file logs.
  /// * `logstoreName`: Configures the log store name on SLS.
  /// * `logtailName`: Configures the log tail name on SLS; if not specified, it means creating a new log tail.
  ///
  /// If you no longer need to use the SLS collection feature, you should set the value of this field to an empty string. There are two examples:
  /// - Using SAE automatically created SLS resources: [{"logDir":"","logType":"stdout"},{"logDir":"/tmp/a.log"}].
  /// - Using custom SLS resources: [{"projectName":"test-sls","logType":"stdout","logDir":"","logstoreName":"sae","logtailName":""},{"projectName":"test","logDir":"/tmp/a.log","logstoreName":"sae","logtailName":""}].
  ///
  /// **NOTE:** Projects that are automatically created with applications will be deleted along with the application deletion. Therefore, when selecting existing projects, you cannot choose projects automatically created by SAE.
  final pulumi.Input<String>? slsConfigs;
  /// The status of the resource. Valid values: `RUNNING`, `STOPPED`, `UNKNOWN`.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Graceful offline timeout, the default is 30, the unit is seconds. The value range is 1~60. Valid values: [1,60].
  final pulumi.Input<int>? terminationGracePeriodSeconds;
  /// Time zone. Default value: `Asia/Shanghai`.
  final pulumi.Input<String>? timezone;
  /// Tomcat file configuration, set to "{}" means to delete the configuration:  useDefaultConfig: Whether to use a custom configuration, if it is true, it means that the custom configuration is not used; if it is false, it means that the custom configuration is used. If you do not use custom configuration, the following parameter configuration will not take effect.  contextInputType: Select the access path of the application.  war: No need to fill in the custom path, the access path of the application is the WAR package name. root: No need to fill in the custom path, the access path of the application is /. custom: You need to fill in the custom path in the custom path below. contextPath: custom path, this parameter only needs to be configured when the contextInputType type is custom.  httpPort: The port range is 1024~65535. Ports less than 1024 need Root permission to operate. Because the container is configured with Admin permissions, please fill in a port greater than 1024. If not configured, the default is 8080. maxThreads: Configure the number of connections in the connection pool, the default size is 400. uriEncoding: Tomcat encoding format, including UTF-8, ISO-8859-1, GBK and GB2312. If not set, the default is ISO-8859-1. useBodyEncoding: Whether to use BodyEncoding for URL. Valid values: `contextInputType`, `contextPath`, `httpPort`, `maxThreads`, `uriEncoding`, `useBodyEncoding`, `useDefaultConfig`.
  /// **NOTE:** Field `tomcat_config` has been deprecated from provider version 1.211.0. New field `tomcat_config_v2` instead.
  final pulumi.Input<String>? tomcatConfig;
  /// The Tomcat configuration. See `tomcat_config_v2` below.
  final pulumi.Input<ApplicationTomcatConfigV2>? tomcatConfigV2;
  /// The update strategy. **NOTE:** Field `update_strategy` has been deprecated from provider version 1.211.0. New field `update_strategy_v2` instead.
  final pulumi.Input<String>? updateStrategy;
  /// The release policy. See `update_strategy_v2` below.
  final pulumi.Input<ApplicationUpdateStrategyV2>? updateStrategyV2;
  /// The vpc id.
  final pulumi.Input<String>? vpcId;
  /// The vswitch id. **NOTE:** From version 1.211.0, `vswitch_id` can be modified.
  final pulumi.Input<String>? vswitchId;
  /// WAR package launch application option. Application default startup command: java $JAVA_OPTS $CATALINA_OPTS [-Options] org.apache.catalina.startup.Bootstrap "$@" start.
  final pulumi.Input<String>? warStartOptions;
  /// The version of tomcat that the deployment package depends on. Image type applications are not supported.
  final pulumi.Input<String>? webContainer;

  /// Creates a new [ApplicationArgs].
  /// [acrAssumeRoleArn] The ARN of the RAM role required when pulling images across accounts. Only necessary if the image_url is pointing to an ACR EE instance.
  /// [acrInstanceId] The ID of the ACR EE instance. Only necessary if the image_url is pointing to an ACR EE instance.
  /// [appDescription] Application description information. No more than 1024 characters. **NOTE:** From version 1.211.0, `app_description` can be modified.
  /// [appName] Application Name. Combinations of numbers, letters, and dashes (-) are allowed. It must start with a letter and the maximum length is 36 characters.
  /// [autoConfig] The auto config. Valid values: `true`, `false`.
  /// [autoEnableApplicationScalingRule] The auto enable application scaling rule. Valid values: `true`, `false`.
  /// [batchWaitTime] The batch wait time.
  /// [changeOrderDesc] The change order desc.
  /// [command] Mirror start command. The command must be an executable object in the container. For example: sleep. Setting this command will cause the original startup command of the mirror to become invalid.
  /// [commandArgs] Mirror startup command parameters. The parameters required for the above start command. For example: 1d. **NOTE:** Field `command_args` has been deprecated from provider version 1.211.0. New field `command_args_v2` instead.
  /// [commandArgsV2s] The parameters of the image startup command.
  /// [configMapMountDesc] ConfigMap mount description. **NOTE:** Field `config_map_mount_desc` has been deprecated from provider version 1.211.0. New field `config_map_mount_desc_v2` instead.
  /// [configMapMountDescV2s] The description of the ConfigMap that is mounted to the application. A ConfigMap that is created on the ConfigMaps page of a namespace is used to inject configurations into containers. See `config_map_mount_desc_v2` below.
  /// [cpu] The CPU required for each instance, in millicores, cannot be 0. Valid values: `500`, `1000`, `2000`, `4000`, `8000`, `16000`, `32000`.
  /// [customHostAlias] Custom host mapping in the container. For example: [{`hostName`:`samplehost`,`ip`:`127.0.0.1`}]. **NOTE:** Field `custom_host_alias` has been deprecated from provider version 1.211.0. New field `custom_host_alias_v2` instead.
  /// [customHostAliasV2s] The custom mapping between the hostname and IP address in the container. See `custom_host_alias_v2` below.
  /// [deploy] The deploy. Valid values: `true`, `false`.
  /// [edasContainerVersion] The operating environment used by the Pandora application.
  /// [enableAhas] The enable ahas. Valid values: `true`, `false`.
  /// [enableGreyTagRoute] The enable grey tag route. Default value: `false`. Valid values:
  /// [envs] Container environment variable parameters. For example,`	[{"name":"envtmp","value":"0"}]`. The value description is as follows:
  /// [imagePullSecrets] The ID of the corresponding Secret.
  /// [imageUrl] Mirror address. Only Image type applications can configure the mirror address.
  /// [jarStartArgs] The JAR package starts application parameters. Application default startup command: $JAVA_HOME/bin/java $JarStartOptions -jar $CATALINA_OPTS "$package_path" $JarStartArgs.
  /// [jarStartOptions] The JAR package starts the application option. Application default startup command: $JAVA_HOME/bin/java $JarStartOptions -jar $CATALINA_OPTS "$package_path" $JarStartArgs.
  /// [jdk] The JDK version that the deployment package depends on. Image type applications are not supported.
  /// [kafkaConfigs] The logging configurations of ApsaraMQ for Kafka. See `kafka_configs` below.
  /// [liveness] Container health check. Containers that fail the health check will be shut down and restored. Currently, only the method of issuing commands in the container is supported.
  /// [livenessV2] The liveness check settings of the container. See `liveness_v2` below.
  /// [memory] The memory required for each instance, in MB, cannot be 0. One-to-one correspondence with CPU. Valid values: `1024`, `2048`, `4096`, `8192`, `12288`, `16384`, `24576`, `32768`, `65536`, `131072`.
  /// [microRegistration] Select the Nacos registry. Valid values: `0`, `1`, `2`.
  /// [minReadyInstanceRatio] Minimum Survival Instance Percentage. **NOTE:** When `min_ready_instances` and `min_ready_instance_ratio` are passed at the same time, and the value of `min_ready_instance_ratio` is not -1, the `min_ready_instance_ratio` parameter shall prevail. Assuming that `min_ready_instances` is 5 and `min_ready_instance_ratio` is 50, 50 is used to calculate the minimum number of surviving instances.The value description is as follows:
  /// [minReadyInstances] The Minimum Available Instance. On the Change Had Promised during the Available Number of Instances to Be.
  /// [namespaceId] SAE namespace ID. Only namespaces whose names are lowercase letters and dashes (-) are supported, and must start with a letter. The namespace can be obtained by calling the DescribeNamespaceList interface.
  /// [nasConfigs] The configurations for mounting the NAS file system. See `nas_configs` below.
  /// [ossAkId] OSS AccessKey ID.
  /// [ossAkSecret] OSS  AccessKey Secret.
  /// [ossMountDescs] OSS mount description information. **NOTE:** Field `oss_mount_descs` has been deprecated from provider version 1.211.0. New field `oss_mount_descs_v2` instead.
  /// [ossMountDescsV2s] The description of the mounted Object Storage Service (OSS) bucket. See `oss_mount_descs_v2` below.
  /// [packageType] Application package type. Valid values: `FatJar`, `War`, `Image`, `PhpZip`, `IMAGE_PHP_5_4`, `IMAGE_PHP_5_4_ALPINE`, `IMAGE_PHP_5_5`, `IMAGE_PHP_5_5_ALPINE`, `IMAGE_PHP_5_6`, `IMAGE_PHP_5_6_ALPINE`, `IMAGE_PHP_7_0`, `IMAGE_PHP_7_0_ALPINE`, `IMAGE_PHP_7_1`, `IMAGE_PHP_7_1_ALPINE`, `IMAGE_PHP_7_2`, `IMAGE_PHP_7_2_ALPINE`, `IMAGE_PHP_7_3`, `IMAGE_PHP_7_3_ALPINE`, `PythonZip`.
  /// [packageUrl] Deployment package address. Only FatJar or War type applications can configure the deployment package address.
  /// [packageVersion] The version number of the deployment package. Required when the Package Type is War and FatJar.
  /// [php] The Php environment.
  /// [phpArmsConfigLocation] The PHP application monitors the mount path, and you need to ensure that the PHP server will load the configuration file of this path. You don't need to pay attention to the configuration content, SAE will automatically render the correct configuration file.
  /// [phpConfig] PHP configuration file content.
  /// [phpConfigLocation] PHP application startup configuration mount path, you need to ensure that the PHP server will start using this configuration file.
  /// [postStart] Execute the script after startup, the format is like: {`exec`:{`command`:[`cat`,"/etc/group"]}}. **NOTE:** Field `post_start` has been deprecated from provider version 1.211.0. New field `post_start_v2` instead.
  /// [postStartV2] The script that is run immediately after the container is started. See `post_start_v2` below.
  /// [preStop] Execute the script before stopping, the format is like: {`exec`:{`command`:[`cat`,"/etc/group"]}}. **NOTE:** Field `pre_stop` has been deprecated from provider version 1.211.0. New field `pre_stop_v2` instead.
  /// [preStopV2] The script that is run before the container is stopped. See `pre_stop_v2` below.
  /// [programmingLanguage] The programming language that is used to create the application. Valid values: `java`, `php`, `other`.
  /// [pvtzDiscoverySvc] The configurations of Kubernetes Service-based service registration and discovery. See `pvtz_discovery_svc` below.
  /// [readiness] Application startup status checks, containers that fail multiple health checks will be shut down and restarted. Containers that do not pass the health check will not receive SLB traffic. For example: {`exec`:{`command`:[`sh`,"-c","cat /home/admin/start.sh"]},`initialDelaySeconds`:30,`periodSeconds`:30,"timeoutSeconds ":2}. Valid values: `command`, `initialDelaySeconds`, `periodSeconds`, `timeoutSeconds`.
  /// [readinessV2] The readiness check settings of the container. If a container fails this health check multiple times, the container is stopped and then restarted. See `readiness_v2` below.
  /// [replicas] Initial number of instances.
  /// [securityGroupId] Security group ID.
  /// [slsConfigs] Configuration for log collection to SLS. Valid parameter descriptions are as follows:
  /// [status] The status of the resource. Valid values: `RUNNING`, `STOPPED`, `UNKNOWN`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [terminationGracePeriodSeconds] Graceful offline timeout, the default is 30, the unit is seconds. The value range is 1~60. Valid values: [1,60].
  /// [timezone] Time zone. Default value: `Asia/Shanghai`.
  /// [tomcatConfig] Tomcat file configuration, set to "{}" means to delete the configuration:  useDefaultConfig: Whether to use a custom configuration, if it is true, it means that the custom configuration is not used; if it is false, it means that the custom configuration is used. If you do not use custom configuration, the following parameter configuration will not take effect.  contextInputType: Select the access path of the application.  war: No need to fill in the custom path, the access path of the application is the WAR package name. root: No need to fill in the custom path, the access path of the application is /. custom: You need to fill in the custom path in the custom path below. contextPath: custom path, this parameter only needs to be configured when the contextInputType type is custom.  httpPort: The port range is 1024~65535. Ports less than 1024 need Root permission to operate. Because the container is configured with Admin permissions, please fill in a port greater than 1024. If not configured, the default is 8080. maxThreads: Configure the number of connections in the connection pool, the default size is 400. uriEncoding: Tomcat encoding format, including UTF-8, ISO-8859-1, GBK and GB2312. If not set, the default is ISO-8859-1. useBodyEncoding: Whether to use BodyEncoding for URL. Valid values: `contextInputType`, `contextPath`, `httpPort`, `maxThreads`, `uriEncoding`, `useBodyEncoding`, `useDefaultConfig`.
  /// [tomcatConfigV2] The Tomcat configuration. See `tomcat_config_v2` below.
  /// [updateStrategy] The update strategy. **NOTE:** Field `update_strategy` has been deprecated from provider version 1.211.0. New field `update_strategy_v2` instead.
  /// [updateStrategyV2] The release policy. See `update_strategy_v2` below.
  /// [vpcId] The vpc id.
  /// [vswitchId] The vswitch id. **NOTE:** From version 1.211.0, `vswitch_id` can be modified.
  /// [warStartOptions] WAR package launch application option. Application default startup command: java $JAVA_OPTS $CATALINA_OPTS [-Options] org.apache.catalina.startup.Bootstrap "$@" start.
  /// [webContainer] The version of tomcat that the deployment package depends on. Image type applications are not supported.
  ApplicationArgs({
    this.acrAssumeRoleArn,
    this.acrInstanceId,
    this.appDescription,
    required this.appName,
    this.autoConfig,
    this.autoEnableApplicationScalingRule,
    this.batchWaitTime,
    this.changeOrderDesc,
    this.command,
    this.commandArgs,
    this.commandArgsV2s,
    this.configMapMountDesc,
    this.configMapMountDescV2s,
    this.cpu,
    this.customHostAlias,
    this.customHostAliasV2s,
    this.deploy,
    this.edasContainerVersion,
    this.enableAhas,
    this.enableGreyTagRoute,
    this.envs,
    this.imagePullSecrets,
    this.imageUrl,
    this.jarStartArgs,
    this.jarStartOptions,
    this.jdk,
    this.kafkaConfigs,
    this.liveness,
    this.livenessV2,
    this.memory,
    this.microRegistration,
    this.minReadyInstanceRatio,
    this.minReadyInstances,
    this.namespaceId,
    this.nasConfigs,
    this.ossAkId,
    this.ossAkSecret,
    this.ossMountDescs,
    this.ossMountDescsV2s,
    required this.packageType,
    this.packageUrl,
    this.packageVersion,
    this.php,
    this.phpArmsConfigLocation,
    this.phpConfig,
    this.phpConfigLocation,
    this.postStart,
    this.postStartV2,
    this.preStop,
    this.preStopV2,
    this.programmingLanguage,
    this.pvtzDiscoverySvc,
    this.readiness,
    this.readinessV2,
    required this.replicas,
    this.securityGroupId,
    this.slsConfigs,
    this.status,
    this.tags,
    this.terminationGracePeriodSeconds,
    this.timezone,
    this.tomcatConfig,
    this.tomcatConfigV2,
    this.updateStrategy,
    this.updateStrategyV2,
    this.vpcId,
    this.vswitchId,
    this.warStartOptions,
    this.webContainer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acrAssumeRoleArn': ?acrAssumeRoleArn,
      'acrInstanceId': ?acrInstanceId,
      'appDescription': ?appDescription,
      'appName': appName,
      'autoConfig': ?autoConfig,
      'autoEnableApplicationScalingRule': ?autoEnableApplicationScalingRule,
      'batchWaitTime': ?batchWaitTime,
      'changeOrderDesc': ?changeOrderDesc,
      'command': ?command,
      'commandArgs': ?commandArgs,
      'commandArgsV2s': ?commandArgsV2s,
      'configMapMountDesc': ?configMapMountDesc,
      'configMapMountDescV2s': ?pulumi.Input.mapOptionalInputValue<List<ApplicationConfigMapMountDescV2>, List<Map<String, dynamic>>>(configMapMountDescV2s, (value) => pulumi.Input.encodeList<ApplicationConfigMapMountDescV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cpu': ?cpu,
      'customHostAlias': ?customHostAlias,
      'customHostAliasV2s': ?pulumi.Input.mapOptionalInputValue<List<ApplicationCustomHostAliasV2>, List<Map<String, dynamic>>>(customHostAliasV2s, (value) => pulumi.Input.encodeList<ApplicationCustomHostAliasV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deploy': ?deploy,
      'edasContainerVersion': ?edasContainerVersion,
      'enableAhas': ?enableAhas,
      'enableGreyTagRoute': ?enableGreyTagRoute,
      'envs': ?envs,
      'imagePullSecrets': ?imagePullSecrets,
      'imageUrl': ?imageUrl,
      'jarStartArgs': ?jarStartArgs,
      'jarStartOptions': ?jarStartOptions,
      'jdk': ?jdk,
      'kafkaConfigs': ?pulumi.Input.mapOptionalInputValue<ApplicationKafkaConfigs, Map<String, dynamic>>(kafkaConfigs, (value) => value.toMap()),
      'liveness': ?liveness,
      'livenessV2': ?pulumi.Input.mapOptionalInputValue<ApplicationLivenessV2, Map<String, dynamic>>(livenessV2, (value) => value.toMap()),
      'memory': ?memory,
      'microRegistration': ?microRegistration,
      'minReadyInstanceRatio': ?minReadyInstanceRatio,
      'minReadyInstances': ?minReadyInstances,
      'namespaceId': ?namespaceId,
      'nasConfigs': ?pulumi.Input.mapOptionalInputValue<List<ApplicationNasConfig>, List<Map<String, dynamic>>>(nasConfigs, (value) => pulumi.Input.encodeList<ApplicationNasConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ossAkId': ?ossAkId,
      'ossAkSecret': ?ossAkSecret,
      'ossMountDescs': ?ossMountDescs,
      'ossMountDescsV2s': ?pulumi.Input.mapOptionalInputValue<List<ApplicationOssMountDescsV2>, List<Map<String, dynamic>>>(ossMountDescsV2s, (value) => pulumi.Input.encodeList<ApplicationOssMountDescsV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'packageType': packageType,
      'packageUrl': ?packageUrl,
      'packageVersion': ?packageVersion,
      'php': ?php,
      'phpArmsConfigLocation': ?phpArmsConfigLocation,
      'phpConfig': ?phpConfig,
      'phpConfigLocation': ?phpConfigLocation,
      'postStart': ?postStart,
      'postStartV2': ?pulumi.Input.mapOptionalInputValue<ApplicationPostStartV2, Map<String, dynamic>>(postStartV2, (value) => value.toMap()),
      'preStop': ?preStop,
      'preStopV2': ?pulumi.Input.mapOptionalInputValue<ApplicationPreStopV2, Map<String, dynamic>>(preStopV2, (value) => value.toMap()),
      'programmingLanguage': ?programmingLanguage,
      'pvtzDiscoverySvc': ?pulumi.Input.mapOptionalInputValue<ApplicationPvtzDiscoverySvc, Map<String, dynamic>>(pvtzDiscoverySvc, (value) => value.toMap()),
      'readiness': ?readiness,
      'readinessV2': ?pulumi.Input.mapOptionalInputValue<ApplicationReadinessV2, Map<String, dynamic>>(readinessV2, (value) => value.toMap()),
      'replicas': replicas,
      'securityGroupId': ?securityGroupId,
      'slsConfigs': ?slsConfigs,
      'status': ?status,
      'tags': ?tags,
      'terminationGracePeriodSeconds': ?terminationGracePeriodSeconds,
      'timezone': ?timezone,
      'tomcatConfig': ?tomcatConfig,
      'tomcatConfigV2': ?pulumi.Input.mapOptionalInputValue<ApplicationTomcatConfigV2, Map<String, dynamic>>(tomcatConfigV2, (value) => value.toMap()),
      'updateStrategy': ?updateStrategy,
      'updateStrategyV2': ?pulumi.Input.mapOptionalInputValue<ApplicationUpdateStrategyV2, Map<String, dynamic>>(updateStrategyV2, (value) => value.toMap()),
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'warStartOptions': ?warStartOptions,
      'webContainer': ?webContainer,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      acrAssumeRoleArn: map['acrAssumeRoleArn'] == null ? null : (map['acrAssumeRoleArn'] as String).input(),
      acrInstanceId: map['acrInstanceId'] == null ? null : (map['acrInstanceId'] as String).input(),
      appDescription: map['appDescription'] == null ? null : (map['appDescription'] as String).input(),
      appName: (map['appName'] as String).input(),
      autoConfig: map['autoConfig'] == null ? null : (map['autoConfig'] as bool).input(),
      autoEnableApplicationScalingRule: map['autoEnableApplicationScalingRule'] == null ? null : (map['autoEnableApplicationScalingRule'] as bool).input(),
      batchWaitTime: map['batchWaitTime'] == null ? null : (map['batchWaitTime'] as int).input(),
      changeOrderDesc: map['changeOrderDesc'] == null ? null : (map['changeOrderDesc'] as String).input(),
      command: map['command'] == null ? null : (map['command'] as String).input(),
      commandArgs: map['commandArgs'] == null ? null : (map['commandArgs'] as String).input(),
      commandArgsV2s: map['commandArgsV2s'] == null ? null : ((map['commandArgsV2s'] as List).cast<String>()).input(),
      configMapMountDesc: map['configMapMountDesc'] == null ? null : (map['configMapMountDesc'] as String).input(),
      configMapMountDescV2s: map['configMapMountDescV2s'] == null ? null : (pulumi.Input.decodeList<ApplicationConfigMapMountDescV2>(map['configMapMountDescV2s'], (value) => ApplicationConfigMapMountDescV2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cpu: map['cpu'] == null ? null : (map['cpu'] as int).input(),
      customHostAlias: map['customHostAlias'] == null ? null : (map['customHostAlias'] as String).input(),
      customHostAliasV2s: map['customHostAliasV2s'] == null ? null : (pulumi.Input.decodeList<ApplicationCustomHostAliasV2>(map['customHostAliasV2s'], (value) => ApplicationCustomHostAliasV2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      deploy: map['deploy'] == null ? null : (map['deploy'] as bool).input(),
      edasContainerVersion: map['edasContainerVersion'] == null ? null : (map['edasContainerVersion'] as String).input(),
      enableAhas: map['enableAhas'] == null ? null : (map['enableAhas'] as String).input(),
      enableGreyTagRoute: map['enableGreyTagRoute'] == null ? null : (map['enableGreyTagRoute'] as bool).input(),
      envs: map['envs'] == null ? null : (map['envs'] as String).input(),
      imagePullSecrets: map['imagePullSecrets'] == null ? null : (map['imagePullSecrets'] as String).input(),
      imageUrl: map['imageUrl'] == null ? null : (map['imageUrl'] as String).input(),
      jarStartArgs: map['jarStartArgs'] == null ? null : (map['jarStartArgs'] as String).input(),
      jarStartOptions: map['jarStartOptions'] == null ? null : (map['jarStartOptions'] as String).input(),
      jdk: map['jdk'] == null ? null : (map['jdk'] as String).input(),
      kafkaConfigs: map['kafkaConfigs'] == null ? null : (ApplicationKafkaConfigs.fromMap((map['kafkaConfigs'] as Map).cast<String, dynamic>())).input(),
      liveness: map['liveness'] == null ? null : (map['liveness'] as String).input(),
      livenessV2: map['livenessV2'] == null ? null : (ApplicationLivenessV2.fromMap((map['livenessV2'] as Map).cast<String, dynamic>())).input(),
      memory: map['memory'] == null ? null : (map['memory'] as int).input(),
      microRegistration: map['microRegistration'] == null ? null : (map['microRegistration'] as String).input(),
      minReadyInstanceRatio: map['minReadyInstanceRatio'] == null ? null : (map['minReadyInstanceRatio'] as int).input(),
      minReadyInstances: map['minReadyInstances'] == null ? null : (map['minReadyInstances'] as int).input(),
      namespaceId: map['namespaceId'] == null ? null : (map['namespaceId'] as String).input(),
      nasConfigs: map['nasConfigs'] == null ? null : (pulumi.Input.decodeList<ApplicationNasConfig>(map['nasConfigs'], (value) => ApplicationNasConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ossAkId: map['ossAkId'] == null ? null : (map['ossAkId'] as String).input(),
      ossAkSecret: map['ossAkSecret'] == null ? null : (map['ossAkSecret'] as String).input(),
      ossMountDescs: map['ossMountDescs'] == null ? null : (map['ossMountDescs'] as String).input(),
      ossMountDescsV2s: map['ossMountDescsV2s'] == null ? null : (pulumi.Input.decodeList<ApplicationOssMountDescsV2>(map['ossMountDescsV2s'], (value) => ApplicationOssMountDescsV2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      packageType: (map['packageType'] as String).input(),
      packageUrl: map['packageUrl'] == null ? null : (map['packageUrl'] as String).input(),
      packageVersion: map['packageVersion'] == null ? null : (map['packageVersion'] as String).input(),
      php: map['php'] == null ? null : (map['php'] as String).input(),
      phpArmsConfigLocation: map['phpArmsConfigLocation'] == null ? null : (map['phpArmsConfigLocation'] as String).input(),
      phpConfig: map['phpConfig'] == null ? null : (map['phpConfig'] as String).input(),
      phpConfigLocation: map['phpConfigLocation'] == null ? null : (map['phpConfigLocation'] as String).input(),
      postStart: map['postStart'] == null ? null : (map['postStart'] as String).input(),
      postStartV2: map['postStartV2'] == null ? null : (ApplicationPostStartV2.fromMap((map['postStartV2'] as Map).cast<String, dynamic>())).input(),
      preStop: map['preStop'] == null ? null : (map['preStop'] as String).input(),
      preStopV2: map['preStopV2'] == null ? null : (ApplicationPreStopV2.fromMap((map['preStopV2'] as Map).cast<String, dynamic>())).input(),
      programmingLanguage: map['programmingLanguage'] == null ? null : (map['programmingLanguage'] as String).input(),
      pvtzDiscoverySvc: map['pvtzDiscoverySvc'] == null ? null : (ApplicationPvtzDiscoverySvc.fromMap((map['pvtzDiscoverySvc'] as Map).cast<String, dynamic>())).input(),
      readiness: map['readiness'] == null ? null : (map['readiness'] as String).input(),
      readinessV2: map['readinessV2'] == null ? null : (ApplicationReadinessV2.fromMap((map['readinessV2'] as Map).cast<String, dynamic>())).input(),
      replicas: (map['replicas'] as int).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId'] as String).input(),
      slsConfigs: map['slsConfigs'] == null ? null : (map['slsConfigs'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      terminationGracePeriodSeconds: map['terminationGracePeriodSeconds'] == null ? null : (map['terminationGracePeriodSeconds'] as int).input(),
      timezone: map['timezone'] == null ? null : (map['timezone'] as String).input(),
      tomcatConfig: map['tomcatConfig'] == null ? null : (map['tomcatConfig'] as String).input(),
      tomcatConfigV2: map['tomcatConfigV2'] == null ? null : (ApplicationTomcatConfigV2.fromMap((map['tomcatConfigV2'] as Map).cast<String, dynamic>())).input(),
      updateStrategy: map['updateStrategy'] == null ? null : (map['updateStrategy'] as String).input(),
      updateStrategyV2: map['updateStrategyV2'] == null ? null : (ApplicationUpdateStrategyV2.fromMap((map['updateStrategyV2'] as Map).cast<String, dynamic>())).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
      warStartOptions: map['warStartOptions'] == null ? null : (map['warStartOptions'] as String).input(),
      webContainer: map['webContainer'] == null ? null : (map['webContainer'] as String).input(),
    );
  }
}

