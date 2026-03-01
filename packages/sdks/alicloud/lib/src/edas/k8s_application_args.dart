// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edas_k8s_application_k8s_application_args_doc}
/// The set of arguments for K8sApplication.
/// {@endtemplate}
/// {@macro pulumi_edas_k8s_application_k8s_application_args_doc}
class K8sApplicationArgs {
  /// The description of the application
  final pulumi.Input<String>? applicationDescriotion;
  /// The name of the application you want to create. Must start with character,supports numbers, letters and dashes (-), supports up to 36 characters
  final pulumi.Input<String> applicationName;
  /// The ID of the alicloud container service kubernetes cluster that you want to import to. You can call the ListCluster operation to query.
  final pulumi.Input<String> clusterId;
  /// The set command, if set, will replace the startup command in the mirror when the mirror is started.
  final pulumi.Input<String>? command;
  /// Used in combination with the command, the parameter of the command is a JsonArray string in the format: `[{"argument":"-c"},{"argument":"test"}]`. Among them, -c and test are two parameters that need to be set.
  final pulumi.Input<List<String>>? commandArgs;
  /// EDAS-Container version that the deployed package depends on. Image does not support this parameter.
  final pulumi.Input<String>? edasContainerVersion;
  /// Deployment environment variables, the format must conform to the JSON object array, such as: `{"name":"x","value":"y"},{"name":"x2","value":"y2"}`, If you want to cancel the configuration, you need to set an empty JSON array "" to indicate no configuration.
  final pulumi.Input<Map<String, String>>? envs;
  /// Mirror address. When the package_type is set to 'Image', this parameter item is required.
  final pulumi.Input<String>? imageUrl;
  /// Public network SLB ID. If not configured, EDAS will automatically purchase a new SLB for the user.
  /// It has been deprecated, and new resource 'alicloud_edas_k8s_slb_attachment' replaces it.
  final pulumi.Input<String>? internetSlbId;
  /// The public network SLB front-end port, range 1~65535. It has been deprecated and new resource 'alicloud_edas_k8s_slb_attachment' replaces it.
  final pulumi.Input<int>? internetSlbPort;
  /// The public network SLB protocol supports TCP, HTTP and HTTPS protocols. It has been deprecated, and new resource 'alicloud_edas_k8s_slb_attachment' replaces it.
  final pulumi.Input<String>? internetSlbProtocol;
  /// The private SLB back-end port, is also the service port of the application, ranging from 1 to 65535.
  /// It has been deprecated, and new resource 'alicloud_edas_k8s_slb_attachment' replaces it.
  final pulumi.Input<int>? internetTargetPort;
  /// The JDK version that the deployed package depends on. The optional parameter values are Open JDK 7 and Open JDK 8. Image does not support this parameter.
  final pulumi.Input<String>? jdk;
  /// The CPU quota of the application instance during application operation. Unit: Number of millcores, set to 0 means unlimited, similar to request_cpu.
  final pulumi.Input<int>? limitMCpu;
  /// The memory limit of the application instance during application operation, unit: M.
  final pulumi.Input<int>? limitMem;
  /// Container survival status monitoring, format such as: `{"failureThreshold": 3,"initialDelaySeconds": 5,"successThreshold": 1,"timeoutSeconds": 1,"tcpSocket":{"host":"", "port":8080} }`.
  final pulumi.Input<String>? liveness;
  /// The configuration of the host file mounted to the container. For example: `[{"type":"","nodePath":"/localfiles","mountPath":"/app/files"},{"type":"Directory","nodePath":"/mnt", "mountPath":"/app/storage"}]`. Among them, nodePath is the host path; mountPath is the path in the container; type is the mount type.
  final pulumi.Input<String>? localVolume;
  /// The ID corresponding to the EDAS namespace, the non-default namespace must be filled in.
  final pulumi.Input<String>? logicalRegionId;
  /// Mount configuration description, as a serialized JSON. For example: `[{"nasPath": "/k8s","mountPath": "/mnt"},{"nasPath": "/files","mountPath": "/app/files"}]`. Among them, nasPath refers to the file storage path; mountPath refers to the path mounted in the container.
  final pulumi.Input<String>? mountDescs;
  /// The namespace of the K8s cluster, it will determine which K8s namespace your application is deployed in. The default is 'default'.
  final pulumi.Input<String>? namespace;
  /// The ID of the mounted NAS must be in the same region as the cluster. It must have an available mount point creation quota, or its mount point must be on a switch in the VPC. If it is not filled in and the mountDescs field exists, a NAS will be automatically purchased and mounted on the switch in the VPC by default.
  final pulumi.Input<String>? nasId;
  /// Application package type. Optional parameter values include: FatJar, WAR and Image.
  final pulumi.Input<String>? packageType;
  /// The url of the package to deploy.Applications deployed through FatJar or WAR packages need to configure it.
  final pulumi.Input<String>? packageUrl;
  /// The version number of the deployment package. WAR and FatJar types are required. Please customize its meaning.
  final pulumi.Input<String>? packageVersion;
  /// Execute script after startup
  final pulumi.Input<String>? postStart;
  /// Execute script before stopping
  final pulumi.Input<String>? preStop;
  /// Container service status check. If the check fails, the traffic passing through K8s Service will not be transferred to the container. The format is: `{"failureThreshold": 3,"initialDelaySeconds": 5,"successThreshold": 1,"timeoutSeconds": 1, "httpGet": {"path": "/consumer","port": 8080,"scheme": "HTTP","httpHeaders": [{"name": "test","value": "testvalue"} ]}}`.
  final pulumi.Input<String>? readiness;
  /// Number of application instances.
  final pulumi.Input<int>? replicas;
  /// When the application is created, the CPU quota of the application instance, unit: number of millcores, similar to request_cpu
  final pulumi.Input<int>? requestsMCpu;
  /// When the application is created, the memory limit of the application instance, unit: M. When set to 0, it means unlimited.
  final pulumi.Input<int>? requestsMem;
  /// The Tomcat version that the deployment package depends on. Applicable to Spring Cloud and Dubbo applications deployed through WAR packages. Image does not support this parameter.
  final pulumi.Input<String>? webContainer;

  /// Creates a new [K8sApplicationArgs].
  /// [applicationDescriotion] The description of the application
  /// [applicationName] The name of the application you want to create. Must start with character,supports numbers, letters and dashes (-), supports up to 36 characters
  /// [clusterId] The ID of the alicloud container service kubernetes cluster that you want to import to. You can call the ListCluster operation to query.
  /// [command] The set command, if set, will replace the startup command in the mirror when the mirror is started.
  /// [commandArgs] Used in combination with the command, the parameter of the command is a JsonArray string in the format: `[{"argument":"-c"},{"argument":"test"}]`. Among them, -c and test are two parameters that need to be set.
  /// [edasContainerVersion] EDAS-Container version that the deployed package depends on. Image does not support this parameter.
  /// [envs] Deployment environment variables, the format must conform to the JSON object array, such as: `{"name":"x","value":"y"},{"name":"x2","value":"y2"}`, If you want to cancel the configuration, you need to set an empty JSON array "" to indicate no configuration.
  /// [imageUrl] Mirror address. When the package_type is set to 'Image', this parameter item is required.
  /// [internetSlbId] Public network SLB ID. If not configured, EDAS will automatically purchase a new SLB for the user.
  /// [internetSlbPort] The public network SLB front-end port, range 1~65535. It has been deprecated and new resource 'alicloud_edas_k8s_slb_attachment' replaces it.
  /// [internetSlbProtocol] The public network SLB protocol supports TCP, HTTP and HTTPS protocols. It has been deprecated, and new resource 'alicloud_edas_k8s_slb_attachment' replaces it.
  /// [internetTargetPort] The private SLB back-end port, is also the service port of the application, ranging from 1 to 65535.
  /// [jdk] The JDK version that the deployed package depends on. The optional parameter values are Open JDK 7 and Open JDK 8. Image does not support this parameter.
  /// [limitMCpu] The CPU quota of the application instance during application operation. Unit: Number of millcores, set to 0 means unlimited, similar to request_cpu.
  /// [limitMem] The memory limit of the application instance during application operation, unit: M.
  /// [liveness] Container survival status monitoring, format such as: `{"failureThreshold": 3,"initialDelaySeconds": 5,"successThreshold": 1,"timeoutSeconds": 1,"tcpSocket":{"host":"", "port":8080} }`.
  /// [localVolume] The configuration of the host file mounted to the container. For example: `[{"type":"","nodePath":"/localfiles","mountPath":"/app/files"},{"type":"Directory","nodePath":"/mnt", "mountPath":"/app/storage"}]`. Among them, nodePath is the host path; mountPath is the path in the container; type is the mount type.
  /// [logicalRegionId] The ID corresponding to the EDAS namespace, the non-default namespace must be filled in.
  /// [mountDescs] Mount configuration description, as a serialized JSON. For example: `[{"nasPath": "/k8s","mountPath": "/mnt"},{"nasPath": "/files","mountPath": "/app/files"}]`. Among them, nasPath refers to the file storage path; mountPath refers to the path mounted in the container.
  /// [namespace] The namespace of the K8s cluster, it will determine which K8s namespace your application is deployed in. The default is 'default'.
  /// [nasId] The ID of the mounted NAS must be in the same region as the cluster. It must have an available mount point creation quota, or its mount point must be on a switch in the VPC. If it is not filled in and the mountDescs field exists, a NAS will be automatically purchased and mounted on the switch in the VPC by default.
  /// [packageType] Application package type. Optional parameter values include: FatJar, WAR and Image.
  /// [packageUrl] The url of the package to deploy.Applications deployed through FatJar or WAR packages need to configure it.
  /// [packageVersion] The version number of the deployment package. WAR and FatJar types are required. Please customize its meaning.
  /// [postStart] Execute script after startup
  /// [preStop] Execute script before stopping
  /// [readiness] Container service status check. If the check fails, the traffic passing through K8s Service will not be transferred to the container. The format is: `{"failureThreshold": 3,"initialDelaySeconds": 5,"successThreshold": 1,"timeoutSeconds": 1, "httpGet": {"path": "/consumer","port": 8080,"scheme": "HTTP","httpHeaders": [{"name": "test","value": "testvalue"} ]}}`.
  /// [replicas] Number of application instances.
  /// [requestsMCpu] When the application is created, the CPU quota of the application instance, unit: number of millcores, similar to request_cpu
  /// [requestsMem] When the application is created, the memory limit of the application instance, unit: M. When set to 0, it means unlimited.
  /// [webContainer] The Tomcat version that the deployment package depends on. Applicable to Spring Cloud and Dubbo applications deployed through WAR packages. Image does not support this parameter.
  K8sApplicationArgs({
    pulumi.Output<String>? applicationDescriotion,
    required pulumi.Output<String> applicationName,
    required pulumi.Output<String> clusterId,
    pulumi.Output<String>? command,
    pulumi.Output<List<String>>? commandArgs,
    pulumi.Output<String>? edasContainerVersion,
    pulumi.Output<Map<String, String>>? envs,
    pulumi.Output<String>? imageUrl,
    pulumi.Output<String>? internetSlbId,
    pulumi.Output<int>? internetSlbPort,
    pulumi.Output<String>? internetSlbProtocol,
    pulumi.Output<int>? internetTargetPort,
    pulumi.Output<String>? jdk,
    pulumi.Output<int>? limitMCpu,
    pulumi.Output<int>? limitMem,
    pulumi.Output<String>? liveness,
    pulumi.Output<String>? localVolume,
    pulumi.Output<String>? logicalRegionId,
    pulumi.Output<String>? mountDescs,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? nasId,
    pulumi.Output<String>? packageType,
    pulumi.Output<String>? packageUrl,
    pulumi.Output<String>? packageVersion,
    pulumi.Output<String>? postStart,
    pulumi.Output<String>? preStop,
    pulumi.Output<String>? readiness,
    pulumi.Output<int>? replicas,
    pulumi.Output<int>? requestsMCpu,
    pulumi.Output<int>? requestsMem,
    pulumi.Output<String>? webContainer,
  }) :
      applicationDescriotion = pulumi.Input.asOptionalInput<String>(applicationDescriotion),
      applicationName = pulumi.Input.asInput<String>(applicationName),
      clusterId = pulumi.Input.asInput<String>(clusterId),
      command = pulumi.Input.asOptionalInput<String>(command),
      commandArgs = pulumi.Input.asOptionalInput<List<String>>(commandArgs),
      edasContainerVersion = pulumi.Input.asOptionalInput<String>(edasContainerVersion),
      envs = pulumi.Input.asOptionalInput<Map<String, String>>(envs),
      imageUrl = pulumi.Input.asOptionalInput<String>(imageUrl),
      internetSlbId = pulumi.Input.asOptionalInput<String>(internetSlbId),
      internetSlbPort = pulumi.Input.asOptionalInput<int>(internetSlbPort),
      internetSlbProtocol = pulumi.Input.asOptionalInput<String>(internetSlbProtocol),
      internetTargetPort = pulumi.Input.asOptionalInput<int>(internetTargetPort),
      jdk = pulumi.Input.asOptionalInput<String>(jdk),
      limitMCpu = pulumi.Input.asOptionalInput<int>(limitMCpu),
      limitMem = pulumi.Input.asOptionalInput<int>(limitMem),
      liveness = pulumi.Input.asOptionalInput<String>(liveness),
      localVolume = pulumi.Input.asOptionalInput<String>(localVolume),
      logicalRegionId = pulumi.Input.asOptionalInput<String>(logicalRegionId),
      mountDescs = pulumi.Input.asOptionalInput<String>(mountDescs),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      nasId = pulumi.Input.asOptionalInput<String>(nasId),
      packageType = pulumi.Input.asOptionalInput<String>(packageType),
      packageUrl = pulumi.Input.asOptionalInput<String>(packageUrl),
      packageVersion = pulumi.Input.asOptionalInput<String>(packageVersion),
      postStart = pulumi.Input.asOptionalInput<String>(postStart),
      preStop = pulumi.Input.asOptionalInput<String>(preStop),
      readiness = pulumi.Input.asOptionalInput<String>(readiness),
      replicas = pulumi.Input.asOptionalInput<int>(replicas),
      requestsMCpu = pulumi.Input.asOptionalInput<int>(requestsMCpu),
      requestsMem = pulumi.Input.asOptionalInput<int>(requestsMem),
      webContainer = pulumi.Input.asOptionalInput<String>(webContainer);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationDescriotion': ?applicationDescriotion,
      'applicationName': applicationName,
      'clusterId': clusterId,
      'command': ?command,
      'commandArgs': ?commandArgs,
      'edasContainerVersion': ?edasContainerVersion,
      'envs': ?envs,
      'imageUrl': ?imageUrl,
      'internetSlbId': ?internetSlbId,
      'internetSlbPort': ?internetSlbPort,
      'internetSlbProtocol': ?internetSlbProtocol,
      'internetTargetPort': ?internetTargetPort,
      'jdk': ?jdk,
      'limitMCpu': ?limitMCpu,
      'limitMem': ?limitMem,
      'liveness': ?liveness,
      'localVolume': ?localVolume,
      'logicalRegionId': ?logicalRegionId,
      'mountDescs': ?mountDescs,
      'namespace': ?namespace,
      'nasId': ?nasId,
      'packageType': ?packageType,
      'packageUrl': ?packageUrl,
      'packageVersion': ?packageVersion,
      'postStart': ?postStart,
      'preStop': ?preStop,
      'readiness': ?readiness,
      'replicas': ?replicas,
      'requestsMCpu': ?requestsMCpu,
      'requestsMem': ?requestsMem,
      'webContainer': ?webContainer,
    };
  }

  factory K8sApplicationArgs.fromMap(Map<String, dynamic> map) {
    return K8sApplicationArgs(
      applicationDescriotion: map['applicationDescriotion'] == null ? null : pulumi.Output.create<String>(map['applicationDescriotion'] as String),
      applicationName: pulumi.Output.create<String>(map['applicationName'] as String),
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      command: map['command'] == null ? null : pulumi.Output.create<String>(map['command'] as String),
      commandArgs: map['commandArgs'] == null ? null : pulumi.Output.create<List<String>>((map['commandArgs'] as List).cast<String>()),
      edasContainerVersion: map['edasContainerVersion'] == null ? null : pulumi.Output.create<String>(map['edasContainerVersion'] as String),
      envs: map['envs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['envs'] as Map).cast<String, String>()),
      imageUrl: map['imageUrl'] == null ? null : pulumi.Output.create<String>(map['imageUrl'] as String),
      internetSlbId: map['internetSlbId'] == null ? null : pulumi.Output.create<String>(map['internetSlbId'] as String),
      internetSlbPort: map['internetSlbPort'] == null ? null : pulumi.Output.create<int>(map['internetSlbPort'] as int),
      internetSlbProtocol: map['internetSlbProtocol'] == null ? null : pulumi.Output.create<String>(map['internetSlbProtocol'] as String),
      internetTargetPort: map['internetTargetPort'] == null ? null : pulumi.Output.create<int>(map['internetTargetPort'] as int),
      jdk: map['jdk'] == null ? null : pulumi.Output.create<String>(map['jdk'] as String),
      limitMCpu: map['limitMCpu'] == null ? null : pulumi.Output.create<int>(map['limitMCpu'] as int),
      limitMem: map['limitMem'] == null ? null : pulumi.Output.create<int>(map['limitMem'] as int),
      liveness: map['liveness'] == null ? null : pulumi.Output.create<String>(map['liveness'] as String),
      localVolume: map['localVolume'] == null ? null : pulumi.Output.create<String>(map['localVolume'] as String),
      logicalRegionId: map['logicalRegionId'] == null ? null : pulumi.Output.create<String>(map['logicalRegionId'] as String),
      mountDescs: map['mountDescs'] == null ? null : pulumi.Output.create<String>(map['mountDescs'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      nasId: map['nasId'] == null ? null : pulumi.Output.create<String>(map['nasId'] as String),
      packageType: map['packageType'] == null ? null : pulumi.Output.create<String>(map['packageType'] as String),
      packageUrl: map['packageUrl'] == null ? null : pulumi.Output.create<String>(map['packageUrl'] as String),
      packageVersion: map['packageVersion'] == null ? null : pulumi.Output.create<String>(map['packageVersion'] as String),
      postStart: map['postStart'] == null ? null : pulumi.Output.create<String>(map['postStart'] as String),
      preStop: map['preStop'] == null ? null : pulumi.Output.create<String>(map['preStop'] as String),
      readiness: map['readiness'] == null ? null : pulumi.Output.create<String>(map['readiness'] as String),
      replicas: map['replicas'] == null ? null : pulumi.Output.create<int>(map['replicas'] as int),
      requestsMCpu: map['requestsMCpu'] == null ? null : pulumi.Output.create<int>(map['requestsMCpu'] as int),
      requestsMem: map['requestsMem'] == null ? null : pulumi.Output.create<int>(map['requestsMem'] as int),
      webContainer: map['webContainer'] == null ? null : pulumi.Output.create<String>(map['webContainer'] as String),
    );
  }
}

