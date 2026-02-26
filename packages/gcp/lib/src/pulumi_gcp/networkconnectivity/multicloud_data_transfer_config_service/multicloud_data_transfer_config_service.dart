// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../multicloud_data_transfer_config_service_state/multicloud_data_transfer_config_service_state.dart';

class MulticloudDataTransferConfigService {
  /// The name of the service, like "big-query" or "cloud-storage".
  /// This corresponds to the map key in the API.
  final String serviceName;

  /// (Output)
  /// The state and activation time details for the service.
  /// Structure is documented below.
  ///
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedServicesStates"" pulumi-lang-dotnet=""NestedServicesStates"" pulumi-lang-go=""nestedServicesStates"" pulumi-lang-python=""nested_services_states"" pulumi-lang-yaml=""nestedServicesStates"" pulumi-lang-java=""nestedServicesStates"">"nested_services_states"</span>></a>The <span pulumi-lang-nodejs="`states`" pulumi-lang-dotnet="`States`" pulumi-lang-go="`states`" pulumi-lang-python="`states`" pulumi-lang-yaml="`states`" pulumi-lang-java="`states`">`states`</span> block contains:
  final List<MulticloudDataTransferConfigServiceState>? states;

  MulticloudDataTransferConfigService({
    required this.serviceName,
    this.states,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceName'] = serviceName;
    final statesValue = states;
    if (statesValue != null) {
      map['states'] = Input.encodeList<MulticloudDataTransferConfigServiceState,
          Map<String, dynamic>>(statesValue, (value) => value.toMap());
    }
    return map;
  }

  factory MulticloudDataTransferConfigService.fromMap(
      Map<String, dynamic> map) {
    return MulticloudDataTransferConfigService(
      serviceName: map['serviceName'] as String,
      states: map['states'] == null
          ? null
          : Input.decodeList<MulticloudDataTransferConfigServiceState>(
              map['states'],
              (value) => MulticloudDataTransferConfigServiceState.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
