// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_response.dart';
import 'kernel_capabilities_response.dart';
import 'tmpfs_response.dart';

/// Definition of LinuxParameters
class LinuxParametersResponse {
  /// The Linux capabilities for the container that are added to or dropped from the default configuration provided by Docker.  For tasks that use the Fargate launch type, ``capabilities`` is supported for all platform versions but the ``add`` parameter is only supported if using platform version 1.4.0 or later. The Linux capabilities to add or remove from the default Docker configuration for a container defined in the task definition. For more information about the default capabilities and the non-default available capabilities, see [Runtime privilege and Linux capabilities](https://docs.docker.com/engine/reference/run/#runtime-privilege-and-linux-capabilities) in the *Docker run reference*. For more detailed information about these Linux capabilities, see the [capabilities(7)](http://man7.org/linux/man-pages/man7/capabilities.7.html) Linux manual page.
  final KernelCapabilitiesResponse? capabilities;
  /// Any host devices to expose to the container. This parameter maps to ``Devices`` in the [Create a container](https://docs.docker.com/reference/cli/docker/container/create/) section of the [Docker Remote API](https://docs.docker.com/engine/api/) and the ``--device`` option to [docker run](https://docs.docker.com/engine/reference/run/#security-configuration).  If you're using tasks that use the Fargate launch type, the ``devices`` parameter isn't supported.
  final List<DeviceResponse>? devices;
  /// Run an ``init`` process inside the container that forwards signals and reaps processes. This parameter maps to the ``--init`` option to [docker run](https://docs.docker.com/engine/reference/run/#security-configuration). This parameter requires version 1.25 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: ``sudo docker version --format '{{.Server.APIVersion}}'``
  final bool? initProcessEnabled;
  /// The total amount of swap memory (in MiB) a container can use. This parameter will be translated to the ``--memory-swap`` option to [docker run](https://docs.docker.com/engine/reference/run/#security-configuration) where the value would be the sum of the container memory plus the ``maxSwap`` value. If a ``maxSwap`` value of ``0`` is specified, the container will not use swap. Accepted values are ``0`` or any positive integer. If the ``maxSwap`` parameter is omitted, the container will use the swap configuration for the container instance it is running on. A ``maxSwap`` value must be set for the ``swappiness`` parameter to be used.  If you're using tasks that use the Fargate launch type, the ``maxSwap`` parameter isn't supported. If you're using tasks on Amazon Linux 2023 the ``swappiness`` parameter isn't supported.
  final int? maxSwap;
  /// The value for the size (in MiB) of the ``/dev/shm`` volume. This parameter maps to the ``--shm-size`` option to [docker run](https://docs.docker.com/engine/reference/run/#security-configuration).  If you are using tasks that use the Fargate launch type, the ``sharedMemorySize`` parameter is not supported.
  final int? sharedMemorySize;
  /// This allows you to tune a container's memory swappiness behavior. A ``swappiness`` value of ``0`` will cause swapping to not happen unless absolutely necessary. A ``swappiness`` value of ``100`` will cause pages to be swapped very aggressively. Accepted values are whole numbers between ``0`` and ``100``. If the ``swappiness`` parameter is not specified, a default value of ``60`` is used. If a value is not specified for ``maxSwap`` then this parameter is ignored. This parameter maps to the ``--memory-swappiness`` option to [docker run](https://docs.docker.com/engine/reference/run/#security-configuration).  If you're using tasks that use the Fargate launch type, the ``swappiness`` parameter isn't supported. If you're using tasks on Amazon Linux 2023 the ``swappiness`` parameter isn't supported.
  final int? swappiness;
  /// The container path, mount options, and size (in MiB) of the tmpfs mount. This parameter maps to the ``--tmpfs`` option to [docker run](https://docs.docker.com/engine/reference/run/#security-configuration).  If you're using tasks that use the Fargate launch type, the ``tmpfs`` parameter isn't supported.
  final List<TmpfsResponse>? tmpfs;

  /// Creates a new [LinuxParametersResponse].
  /// [capabilities] The Linux capabilities for the container that are added to or dropped from the default configuration provided by Docker.  For tasks that use the Fargate launch type, ``capabilities`` is supported for all platform versions but the ``add`` parameter is only supported if using platform version 1.4.0 or later. The Linux capabilities to add or remove from the default Docker configuration for a container defined in the task definition. For more information about the default capabilities and the non-default available capabilities, see [Runtime privilege and Linux capabilities](https://docs.docker.com/engine/reference/run/#runtime-privilege-and-linux-capabilities) in the *Docker run reference*. For more detailed information about these Linux capabilities, see the [capabilities(7)](http://man7.org/linux/man-pages/man7/capabilities.7.html) Linux manual page.
  /// [devices] Any host devices to expose to the container. This parameter maps to ``Devices`` in the [Create a container](https://docs.docker.com/reference/cli/docker/container/create/) section of the [Docker Remote API](https://docs.docker.com/engine/api/) and the ``--device`` option to [docker run](https://docs.docker.com/engine/reference/run/#security-configuration).  If you're using tasks that use the Fargate launch type, the ``devices`` parameter isn't supported.
  /// [initProcessEnabled] Run an ``init`` process inside the container that forwards signals and reaps processes. This parameter maps to the ``--init`` option to [docker run](https://docs.docker.com/engine/reference/run/#security-configuration). This parameter requires version 1.25 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: ``sudo docker version --format '{{.Server.APIVersion}}'``
  /// [maxSwap] The total amount of swap memory (in MiB) a container can use. This parameter will be translated to the ``--memory-swap`` option to [docker run](https://docs.docker.com/engine/reference/run/#security-configuration) where the value would be the sum of the container memory plus the ``maxSwap`` value. If a ``maxSwap`` value of ``0`` is specified, the container will not use swap. Accepted values are ``0`` or any positive integer. If the ``maxSwap`` parameter is omitted, the container will use the swap configuration for the container instance it is running on. A ``maxSwap`` value must be set for the ``swappiness`` parameter to be used.  If you're using tasks that use the Fargate launch type, the ``maxSwap`` parameter isn't supported. If you're using tasks on Amazon Linux 2023 the ``swappiness`` parameter isn't supported.
  /// [sharedMemorySize] The value for the size (in MiB) of the ``/dev/shm`` volume. This parameter maps to the ``--shm-size`` option to [docker run](https://docs.docker.com/engine/reference/run/#security-configuration).  If you are using tasks that use the Fargate launch type, the ``sharedMemorySize`` parameter is not supported.
  /// [swappiness] This allows you to tune a container's memory swappiness behavior. A ``swappiness`` value of ``0`` will cause swapping to not happen unless absolutely necessary. A ``swappiness`` value of ``100`` will cause pages to be swapped very aggressively. Accepted values are whole numbers between ``0`` and ``100``. If the ``swappiness`` parameter is not specified, a default value of ``60`` is used. If a value is not specified for ``maxSwap`` then this parameter is ignored. This parameter maps to the ``--memory-swappiness`` option to [docker run](https://docs.docker.com/engine/reference/run/#security-configuration).  If you're using tasks that use the Fargate launch type, the ``swappiness`` parameter isn't supported. If you're using tasks on Amazon Linux 2023 the ``swappiness`` parameter isn't supported.
  /// [tmpfs] The container path, mount options, and size (in MiB) of the tmpfs mount. This parameter maps to the ``--tmpfs`` option to [docker run](https://docs.docker.com/engine/reference/run/#security-configuration).  If you're using tasks that use the Fargate launch type, the ``tmpfs`` parameter isn't supported.
  LinuxParametersResponse({
    this.capabilities,
    this.devices,
    this.initProcessEnabled,
    this.maxSwap,
    this.sharedMemorySize,
    this.swappiness,
    this.tmpfs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': ?capabilities == null ? null : capabilities!.toMap(),
      'devices': ?devices == null ? null : pulumi.Input.encodeList<DeviceResponse, Map<String, dynamic>>(devices!, (value) => value.toMap()),
      'initProcessEnabled': ?initProcessEnabled,
      'maxSwap': ?maxSwap,
      'sharedMemorySize': ?sharedMemorySize,
      'swappiness': ?swappiness,
      'tmpfs': ?tmpfs == null ? null : pulumi.Input.encodeList<TmpfsResponse, Map<String, dynamic>>(tmpfs!, (value) => value.toMap()),
    };
  }

  factory LinuxParametersResponse.fromMap(Map<String, dynamic> map) {
    return LinuxParametersResponse(
      capabilities: map['capabilities'] == null ? null : KernelCapabilitiesResponse.fromMap((map['capabilities'] as Map).cast<String, dynamic>()),
      devices: map['devices'] == null ? null : pulumi.Input.decodeList<DeviceResponse>(map['devices'], (value) => DeviceResponse.fromMap((value as Map).cast<String, dynamic>())),
      initProcessEnabled: map['initProcessEnabled'] == null ? null : map['initProcessEnabled'] as bool,
      maxSwap: map['maxSwap'] == null ? null : map['maxSwap'] as int,
      sharedMemorySize: map['sharedMemorySize'] == null ? null : map['sharedMemorySize'] as int,
      swappiness: map['swappiness'] == null ? null : map['swappiness'] as int,
      tmpfs: map['tmpfs'] == null ? null : pulumi.Input.decodeList<TmpfsResponse>(map['tmpfs'], (value) => TmpfsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

