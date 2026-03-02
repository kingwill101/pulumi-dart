// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_eks_property_pod_property_container.dart';
import 'get_job_definition_eks_property_pod_property_image_pull_secret.dart';
import 'get_job_definition_eks_property_pod_property_init_container.dart';
import 'get_job_definition_eks_property_pod_property_metadata.dart';
import 'get_job_definition_eks_property_pod_property_volume.dart';

class GetJobDefinitionEksPropertyPodProperty {
  /// The properties of the container that's used on the Amazon EKS pod. See containers below.
  final pulumi.Input<List<GetJobDefinitionEksPropertyPodPropertyContainer>> containers;
  /// The DNS policy for the pod. The default value is ClusterFirst. If the hostNetwork parameter is not specified, the default is ClusterFirstWithHostNet. ClusterFirst indicates that any DNS query that does not match the configured cluster domain suffix is forwarded to the upstream nameserver inherited from the node.
  final pulumi.Input<String> dnsPolicy;
  /// Indicates if the pod uses the hosts' network IP address. The default value is true. Setting this to false enables the Kubernetes pod networking model. Most AWS Batch workloads are egress-only and don't require the overhead of IP allocation for each pod for incoming connections.
  final pulumi.Input<bool> hostNetwork;
  final pulumi.Input<List<GetJobDefinitionEksPropertyPodPropertyImagePullSecret>> imagePullSecrets;
  /// Containers which run before application containers, always runs to completion, and must complete successfully before the next container starts. These containers are registered with the Amazon EKS Connector agent and persists the registration information in the Kubernetes backend data store. See containers below.
  final pulumi.Input<List<GetJobDefinitionEksPropertyPodPropertyInitContainer>> initContainers;
  /// Metadata about the Kubernetes pod.
  final pulumi.Input<List<GetJobDefinitionEksPropertyPodPropertyMetadata>> metadatas;
  /// The name of the service account that's used to run the pod.
  final pulumi.Input<String> serviceAccountName;
  /// (Optional) Indicates if the processes in a container are shared, or visible, to other containers in the same pod.
  final pulumi.Input<bool> shareProcessNamespace;
  /// A list of data volumes used in a job.
  final pulumi.Input<List<GetJobDefinitionEksPropertyPodPropertyVolume>> volumes;

  /// Creates a new [GetJobDefinitionEksPropertyPodProperty].
  /// [containers] The properties of the container that's used on the Amazon EKS pod. See containers below.
  /// [dnsPolicy] The DNS policy for the pod. The default value is ClusterFirst. If the hostNetwork parameter is not specified, the default is ClusterFirstWithHostNet. ClusterFirst indicates that any DNS query that does not match the configured cluster domain suffix is forwarded to the upstream nameserver inherited from the node.
  /// [hostNetwork] Indicates if the pod uses the hosts' network IP address. The default value is true. Setting this to false enables the Kubernetes pod networking model. Most AWS Batch workloads are egress-only and don't require the overhead of IP allocation for each pod for incoming connections.
  /// [imagePullSecrets] Required.
  /// [initContainers] Containers which run before application containers, always runs to completion, and must complete successfully before the next container starts. These containers are registered with the Amazon EKS Connector agent and persists the registration information in the Kubernetes backend data store. See containers below.
  /// [metadatas] Metadata about the Kubernetes pod.
  /// [serviceAccountName] The name of the service account that's used to run the pod.
  /// [shareProcessNamespace] (Optional) Indicates if the processes in a container are shared, or visible, to other containers in the same pod.
  /// [volumes] A list of data volumes used in a job.
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
    return <String, dynamic>{
      'containers': pulumi.Input.mapInputValue<List<GetJobDefinitionEksPropertyPodPropertyContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<GetJobDefinitionEksPropertyPodPropertyContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsPolicy': dnsPolicy,
      'hostNetwork': hostNetwork,
      'imagePullSecrets': pulumi.Input.mapInputValue<List<GetJobDefinitionEksPropertyPodPropertyImagePullSecret>, List<Map<String, dynamic>>>(imagePullSecrets, (value) => pulumi.Input.encodeList<GetJobDefinitionEksPropertyPodPropertyImagePullSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initContainers': pulumi.Input.mapInputValue<List<GetJobDefinitionEksPropertyPodPropertyInitContainer>, List<Map<String, dynamic>>>(initContainers, (value) => pulumi.Input.encodeList<GetJobDefinitionEksPropertyPodPropertyInitContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadatas': pulumi.Input.mapInputValue<List<GetJobDefinitionEksPropertyPodPropertyMetadata>, List<Map<String, dynamic>>>(metadatas, (value) => pulumi.Input.encodeList<GetJobDefinitionEksPropertyPodPropertyMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccountName': serviceAccountName,
      'shareProcessNamespace': shareProcessNamespace,
      'volumes': pulumi.Input.mapInputValue<List<GetJobDefinitionEksPropertyPodPropertyVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<GetJobDefinitionEksPropertyPodPropertyVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetJobDefinitionEksPropertyPodProperty.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionEksPropertyPodProperty(
      containers: (pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyContainer>(map['containers'], (value) => GetJobDefinitionEksPropertyPodPropertyContainer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dnsPolicy: (map['dnsPolicy'] as String).input(),
      hostNetwork: (map['hostNetwork'] as bool).input(),
      imagePullSecrets: (pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyImagePullSecret>(map['imagePullSecrets'], (value) => GetJobDefinitionEksPropertyPodPropertyImagePullSecret.fromMap((value as Map).cast<String, dynamic>()))).input(),
      initContainers: (pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyInitContainer>(map['initContainers'], (value) => GetJobDefinitionEksPropertyPodPropertyInitContainer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      metadatas: (pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyMetadata>(map['metadatas'], (value) => GetJobDefinitionEksPropertyPodPropertyMetadata.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceAccountName: (map['serviceAccountName'] as String).input(),
      shareProcessNamespace: (map['shareProcessNamespace'] as bool).input(),
      volumes: (pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyVolume>(map['volumes'], (value) => GetJobDefinitionEksPropertyPodPropertyVolume.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

