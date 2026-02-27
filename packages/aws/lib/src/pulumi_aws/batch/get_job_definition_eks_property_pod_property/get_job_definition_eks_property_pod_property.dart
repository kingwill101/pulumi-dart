// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_job_definition_eks_property_pod_property_container/get_job_definition_eks_property_pod_property_container.dart';
import '../get_job_definition_eks_property_pod_property_image_pull_secret/get_job_definition_eks_property_pod_property_image_pull_secret.dart';
import '../get_job_definition_eks_property_pod_property_init_container/get_job_definition_eks_property_pod_property_init_container.dart';
import '../get_job_definition_eks_property_pod_property_metadata/get_job_definition_eks_property_pod_property_metadata.dart';
import '../get_job_definition_eks_property_pod_property_volume/get_job_definition_eks_property_pod_property_volume.dart';

class GetJobDefinitionEksPropertyPodProperty {
  /// The properties of the container that's used on the Amazon EKS pod. See containers below.
  final List<GetJobDefinitionEksPropertyPodPropertyContainer> containers;

  /// The DNS policy for the pod. The default value is ClusterFirst. If the hostNetwork parameter is not specified, the default is ClusterFirstWithHostNet. ClusterFirst indicates that any DNS query that does not match the configured cluster domain suffix is forwarded to the upstream nameserver inherited from the node.
  final String dnsPolicy;

  /// Indicates if the pod uses the hosts' network IP address. The default value is true. Setting this to false enables the Kubernetes pod networking model. Most AWS Batch workloads are egress-only and don't require the overhead of IP allocation for each pod for incoming connections.
  final bool hostNetwork;
  final List<GetJobDefinitionEksPropertyPodPropertyImagePullSecret>
      imagePullSecrets;

  /// Containers which run before application containers, always runs to completion, and must complete successfully before the next container starts. These containers are registered with the Amazon EKS Connector agent and persists the registration information in the Kubernetes backend data store. See containers below.
  final List<GetJobDefinitionEksPropertyPodPropertyInitContainer>
      initContainers;

  /// Metadata about the Kubernetes pod.
  final List<GetJobDefinitionEksPropertyPodPropertyMetadata> metadatas;

  /// The name of the service account that's used to run the pod.
  final String serviceAccountName;

  /// (Optional) Indicates if the processes in a container are shared, or visible, to other containers in the same pod.
  final bool shareProcessNamespace;

  /// A list of data volumes used in a job.
  final List<GetJobDefinitionEksPropertyPodPropertyVolume> volumes;

  GetJobDefinitionEksPropertyPodProperty({
    required this.containers,
    required this.dnsPolicy,
    required this.hostNetwork,
    required this.imagePullSecrets,
    required this.initContainers,
    required this.metadatas,
    required this.serviceAccountName,
    required this.shareProcessNamespace,
    required this.volumes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containers'] = pulumi.Input.encodeList<
        GetJobDefinitionEksPropertyPodPropertyContainer,
        Map<String, dynamic>>(containers, (value) => value.toMap());
    map['dnsPolicy'] = dnsPolicy;
    map['hostNetwork'] = hostNetwork;
    map['imagePullSecrets'] = pulumi.Input.encodeList<
        GetJobDefinitionEksPropertyPodPropertyImagePullSecret,
        Map<String, dynamic>>(imagePullSecrets, (value) => value.toMap());
    map['initContainers'] = pulumi.Input.encodeList<
        GetJobDefinitionEksPropertyPodPropertyInitContainer,
        Map<String, dynamic>>(initContainers, (value) => value.toMap());
    map['metadatas'] = pulumi.Input.encodeList<
        GetJobDefinitionEksPropertyPodPropertyMetadata,
        Map<String, dynamic>>(metadatas, (value) => value.toMap());
    map['serviceAccountName'] = serviceAccountName;
    map['shareProcessNamespace'] = shareProcessNamespace;
    map['volumes'] = pulumi.Input.encodeList<
        GetJobDefinitionEksPropertyPodPropertyVolume,
        Map<String, dynamic>>(volumes, (value) => value.toMap());
    return map;
  }

  factory GetJobDefinitionEksPropertyPodProperty.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionEksPropertyPodProperty(
      containers: pulumi.Input.decodeList<
              GetJobDefinitionEksPropertyPodPropertyContainer>(
          map['containers'],
          (value) => GetJobDefinitionEksPropertyPodPropertyContainer.fromMap(
              (value as Map).cast<String, dynamic>())),
      dnsPolicy: map['dnsPolicy'] as String,
      hostNetwork: map['hostNetwork'] as bool,
      imagePullSecrets: pulumi.Input.decodeList<
              GetJobDefinitionEksPropertyPodPropertyImagePullSecret>(
          map['imagePullSecrets'],
          (value) =>
              GetJobDefinitionEksPropertyPodPropertyImagePullSecret.fromMap(
                  (value as Map).cast<String, dynamic>())),
      initContainers: pulumi.Input.decodeList<
              GetJobDefinitionEksPropertyPodPropertyInitContainer>(
          map['initContainers'],
          (value) =>
              GetJobDefinitionEksPropertyPodPropertyInitContainer.fromMap(
                  (value as Map).cast<String, dynamic>())),
      metadatas: pulumi.Input.decodeList<
              GetJobDefinitionEksPropertyPodPropertyMetadata>(
          map['metadatas'],
          (value) => GetJobDefinitionEksPropertyPodPropertyMetadata.fromMap(
              (value as Map).cast<String, dynamic>())),
      serviceAccountName: map['serviceAccountName'] as String,
      shareProcessNamespace: map['shareProcessNamespace'] as bool,
      volumes:
          pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyVolume>(
              map['volumes'],
              (value) => GetJobDefinitionEksPropertyPodPropertyVolume.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
