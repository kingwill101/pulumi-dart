// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_data_flow_properties_response_custom_properties.dart';

/// Data flow properties for managed integration runtime.
class IntegrationRuntimeDataFlowPropertiesResponse {
  /// Cluster will not be recycled and it will be used in next data flow activity run until TTL (time to live) is reached if this is set as false. Default is true.
  final pulumi.Input<bool>? cleanup;
  /// Compute type of the cluster which will execute data flow job.
  final pulumi.Input<String>? computeType;
  /// Core count of the cluster which will execute data flow job. Supported values are: 8, 16, 32, 48, 80, 144 and 272.
  final pulumi.Input<int>? coreCount;
  /// Custom properties are used to tune the data flow runtime performance.
  final pulumi.Input<List<IntegrationRuntimeDataFlowPropertiesResponseCustomProperties>>? customProperties;
  /// Time to live (in minutes) setting of the cluster which will execute data flow job.
  final pulumi.Input<int>? timeToLive;

  /// Creates a new [IntegrationRuntimeDataFlowPropertiesResponse].
  /// [cleanup] Cluster will not be recycled and it will be used in next data flow activity run until TTL (time to live) is reached if this is set as false. Default is true.
  /// [computeType] Compute type of the cluster which will execute data flow job.
  /// [coreCount] Core count of the cluster which will execute data flow job. Supported values are: 8, 16, 32, 48, 80, 144 and 272.
  /// [customProperties] Custom properties are used to tune the data flow runtime performance.
  /// [timeToLive] Time to live (in minutes) setting of the cluster which will execute data flow job.
  const IntegrationRuntimeDataFlowPropertiesResponse({
    this.cleanup,
    this.computeType,
    this.coreCount,
    this.customProperties,
    this.timeToLive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cleanup': ?cleanup,
      'computeType': ?computeType,
      'coreCount': ?coreCount,
      'customProperties': ?pulumi.Input.mapOptionalInputValue<List<IntegrationRuntimeDataFlowPropertiesResponseCustomProperties>, List<Map<String, dynamic>>>(customProperties, (value) => pulumi.Input.encodeList<IntegrationRuntimeDataFlowPropertiesResponseCustomProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeToLive': ?timeToLive,
    };
  }

  factory IntegrationRuntimeDataFlowPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeDataFlowPropertiesResponse(
      cleanup: (() { final guardedValue = map['cleanup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      computeType: (() { final guardedValue = map['computeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coreCount: (() { final guardedValue = map['coreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      customProperties: (() { final guardedValue = map['customProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IntegrationRuntimeDataFlowPropertiesResponseCustomProperties>(guardedValue, (value) => IntegrationRuntimeDataFlowPropertiesResponseCustomProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeToLive: (() { final guardedValue = map['timeToLive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

