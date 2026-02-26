// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../job_definition_eks_properties_pod_properties_container/job_definition_eks_properties_pod_properties_container.dart';
import '../job_definition_eks_properties_pod_properties_image_pull_secret/job_definition_eks_properties_pod_properties_image_pull_secret.dart';
import '../job_definition_eks_properties_pod_properties_init_container/job_definition_eks_properties_pod_properties_init_container.dart';
import '../job_definition_eks_properties_pod_properties_metadata/job_definition_eks_properties_pod_properties_metadata.dart';
import '../job_definition_eks_properties_pod_properties_volume/job_definition_eks_properties_pod_properties_volume.dart';

class JobDefinitionEksPropertiesPodProperties {
  /// Properties of the container that's used on the Amazon EKS pod. See containers below.
  final List<JobDefinitionEksPropertiesPodPropertiesContainer> containers;

  /// DNS policy for the pod. The default value is `ClusterFirst`. If the <span pulumi-lang-nodejs="`hostNetwork`" pulumi-lang-dotnet="`HostNetwork`" pulumi-lang-go="`hostNetwork`" pulumi-lang-python="`host_network`" pulumi-lang-yaml="`hostNetwork`" pulumi-lang-java="`hostNetwork`">`host_network`</span> argument is not specified, the default is `ClusterFirstWithHostNet`. `ClusterFirst` indicates that any DNS query that does not match the configured cluster domain suffix is forwarded to the upstream nameserver inherited from the node. For more information, see Pod's DNS policy in the Kubernetes documentation.
  final String? dnsPolicy;

  /// Whether the pod uses the hosts' network IP address. The default value is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Setting this to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> enables the Kubernetes pod networking model. Most AWS Batch workloads are egress-only and don't require the overhead of IP allocation for each pod for incoming connections.
  final bool? hostNetwork;

  /// List of Kubernetes secret resources. See <span pulumi-lang-nodejs="`imagePullSecret`" pulumi-lang-dotnet="`ImagePullSecret`" pulumi-lang-go="`imagePullSecret`" pulumi-lang-python="`image_pull_secret`" pulumi-lang-yaml="`imagePullSecret`" pulumi-lang-java="`imagePullSecret`">`image_pull_secret`</span> below.
  final List<JobDefinitionEksPropertiesPodPropertiesImagePullSecret>?
      imagePullSecrets;

  /// Containers which run before application containers, always runs to completion, and must complete successfully before the next container starts. These containers are registered with the Amazon EKS Connector agent and persists the registration information in the Kubernetes backend data store. See containers below.
  final List<JobDefinitionEksPropertiesPodPropertiesInitContainer>?
      initContainers;

  /// Metadata about the Kubernetes pod.
  final JobDefinitionEksPropertiesPodPropertiesMetadata? metadata;

  /// Name of the service account that's used to run the pod.
  final String? serviceAccountName;

  /// Indicates if the processes in a container are shared, or visible, to other containers in the same pod.
  final bool? shareProcessNamespace;

  /// Volumes for a job definition that uses Amazon EKS resources. AWS Batch supports emptyDir, hostPath, and secret volume types.
  final List<JobDefinitionEksPropertiesPodPropertiesVolume>? volumes;

  JobDefinitionEksPropertiesPodProperties({
    required this.containers,
    this.dnsPolicy,
    this.hostNetwork,
    this.imagePullSecrets,
    this.initContainers,
    this.metadata,
    this.serviceAccountName,
    this.shareProcessNamespace,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containers'] = Input.encodeList<
        JobDefinitionEksPropertiesPodPropertiesContainer,
        Map<String, dynamic>>(containers, (value) => value.toMap());
    final dnsPolicyValue = dnsPolicy;
    if (dnsPolicyValue != null) {
      map['dnsPolicy'] = dnsPolicyValue;
    }
    final hostNetworkValue = hostNetwork;
    if (hostNetworkValue != null) {
      map['hostNetwork'] = hostNetworkValue;
    }
    final imagePullSecretsValue = imagePullSecrets;
    if (imagePullSecretsValue != null) {
      map['imagePullSecrets'] = Input.encodeList<
              JobDefinitionEksPropertiesPodPropertiesImagePullSecret,
              Map<String, dynamic>>(
          imagePullSecretsValue, (value) => value.toMap());
    }
    final initContainersValue = initContainers;
    if (initContainersValue != null) {
      map['initContainers'] = Input.encodeList<
          JobDefinitionEksPropertiesPodPropertiesInitContainer,
          Map<String, dynamic>>(initContainersValue, (value) => value.toMap());
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue.toMap();
    }
    final serviceAccountNameValue = serviceAccountName;
    if (serviceAccountNameValue != null) {
      map['serviceAccountName'] = serviceAccountNameValue;
    }
    final shareProcessNamespaceValue = shareProcessNamespace;
    if (shareProcessNamespaceValue != null) {
      map['shareProcessNamespace'] = shareProcessNamespaceValue;
    }
    final volumesValue = volumes;
    if (volumesValue != null) {
      map['volumes'] = Input.encodeList<
          JobDefinitionEksPropertiesPodPropertiesVolume,
          Map<String, dynamic>>(volumesValue, (value) => value.toMap());
    }
    return map;
  }

  factory JobDefinitionEksPropertiesPodProperties.fromMap(
      Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodProperties(
      containers:
          Input.decodeList<JobDefinitionEksPropertiesPodPropertiesContainer>(
              map['containers'],
              (value) =>
                  JobDefinitionEksPropertiesPodPropertiesContainer.fromMap(
                      (value as Map).cast<String, dynamic>())),
      dnsPolicy: map['dnsPolicy'] == null ? null : map['dnsPolicy'] as String,
      hostNetwork:
          map['hostNetwork'] == null ? null : map['hostNetwork'] as bool,
      imagePullSecrets: map['imagePullSecrets'] == null
          ? null
          : Input.decodeList<
                  JobDefinitionEksPropertiesPodPropertiesImagePullSecret>(
              map['imagePullSecrets'],
              (value) => JobDefinitionEksPropertiesPodPropertiesImagePullSecret
                  .fromMap((value as Map).cast<String, dynamic>())),
      initContainers: map['initContainers'] == null
          ? null
          : Input.decodeList<
                  JobDefinitionEksPropertiesPodPropertiesInitContainer>(
              map['initContainers'],
              (value) =>
                  JobDefinitionEksPropertiesPodPropertiesInitContainer.fromMap(
                      (value as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null
          ? null
          : JobDefinitionEksPropertiesPodPropertiesMetadata.fromMap(
              (map['metadata'] as Map).cast<String, dynamic>()),
      serviceAccountName: map['serviceAccountName'] == null
          ? null
          : map['serviceAccountName'] as String,
      shareProcessNamespace: map['shareProcessNamespace'] == null
          ? null
          : map['shareProcessNamespace'] as bool,
      volumes: map['volumes'] == null
          ? null
          : Input.decodeList<JobDefinitionEksPropertiesPodPropertiesVolume>(
              map['volumes'],
              (value) => JobDefinitionEksPropertiesPodPropertiesVolume.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
