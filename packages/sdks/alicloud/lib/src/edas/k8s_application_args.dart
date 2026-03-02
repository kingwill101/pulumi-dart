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
    this.applicationDescriotion,
    required this.applicationName,
    required this.clusterId,
    this.command,
    this.commandArgs,
    this.edasContainerVersion,
    this.envs,
    this.imageUrl,
    this.internetSlbId,
    this.internetSlbPort,
    this.internetSlbProtocol,
    this.internetTargetPort,
    this.jdk,
    this.limitMCpu,
    this.limitMem,
    this.liveness,
    this.localVolume,
    this.logicalRegionId,
    this.mountDescs,
    this.namespace,
    this.nasId,
    this.packageType,
    this.packageUrl,
    this.packageVersion,
    this.postStart,
    this.preStop,
    this.readiness,
    this.replicas,
    this.requestsMCpu,
    this.requestsMem,
    this.webContainer,
  });

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
      applicationDescriotion: map['applicationDescriotion'] == null ? null : (map['applicationDescriotion']! as String).input(),
      applicationName: (map['applicationName'] as String).input(),
      clusterId: (map['clusterId'] as String).input(),
      command: map['command'] == null ? null : (map['command']! as String).input(),
      commandArgs: map['commandArgs'] == null ? null : ((map['commandArgs']! as List).cast<String>()).input(),
      edasContainerVersion: map['edasContainerVersion'] == null ? null : (map['edasContainerVersion']! as String).input(),
      envs: map['envs'] == null ? null : ((map['envs']! as Map).cast<String, String>()).input(),
      imageUrl: map['imageUrl'] == null ? null : (map['imageUrl']! as String).input(),
      internetSlbId: map['internetSlbId'] == null ? null : (map['internetSlbId']! as String).input(),
      internetSlbPort: map['internetSlbPort'] == null ? null : (map['internetSlbPort']! as int).input(),
      internetSlbProtocol: map['internetSlbProtocol'] == null ? null : (map['internetSlbProtocol']! as String).input(),
      internetTargetPort: map['internetTargetPort'] == null ? null : (map['internetTargetPort']! as int).input(),
      jdk: map['jdk'] == null ? null : (map['jdk']! as String).input(),
      limitMCpu: map['limitMCpu'] == null ? null : (map['limitMCpu']! as int).input(),
      limitMem: map['limitMem'] == null ? null : (map['limitMem']! as int).input(),
      liveness: map['liveness'] == null ? null : (map['liveness']! as String).input(),
      localVolume: map['localVolume'] == null ? null : (map['localVolume']! as String).input(),
      logicalRegionId: map['logicalRegionId'] == null ? null : (map['logicalRegionId']! as String).input(),
      mountDescs: map['mountDescs'] == null ? null : (map['mountDescs']! as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      nasId: map['nasId'] == null ? null : (map['nasId']! as String).input(),
      packageType: map['packageType'] == null ? null : (map['packageType']! as String).input(),
      packageUrl: map['packageUrl'] == null ? null : (map['packageUrl']! as String).input(),
      packageVersion: map['packageVersion'] == null ? null : (map['packageVersion']! as String).input(),
      postStart: map['postStart'] == null ? null : (map['postStart']! as String).input(),
      preStop: map['preStop'] == null ? null : (map['preStop']! as String).input(),
      readiness: map['readiness'] == null ? null : (map['readiness']! as String).input(),
      replicas: map['replicas'] == null ? null : (map['replicas']! as int).input(),
      requestsMCpu: map['requestsMCpu'] == null ? null : (map['requestsMCpu']! as int).input(),
      requestsMem: map['requestsMem'] == null ? null : (map['requestsMem']! as int).input(),
      webContainer: map['webContainer'] == null ? null : (map['webContainer']! as String).input(),
    );
  }
}

