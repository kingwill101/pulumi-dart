// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gce_setup_response.dart';
import 'upgrade_history_entry_response_notebooks_v2.dart';

/// Result data returned by getInstance.
class GetInstanceNotebooksV2Result {
  /// Instance creation time.
  final String createTime;

  /// Email address of entity that sent original CreateInstance request.
  final String creator;

  /// Optional. If true, the notebook instance will not register with the proxy.
  final bool disableProxyAccess;

  /// Optional. Compute Engine setup for the notebook. Uses notebook-defined fields.
  final GceSetupResponse gceSetup;

  /// Additional information about instance health. Example: healthInfo": { "docker_proxy_agent_status": "1", "docker_status": "1", "jupyterlab_api_status": "-1", "jupyterlab_status": "-1", "updated": "2020-10-18 09:40:03.573409" }
  final Map<String, String> healthInfo;

  /// Instance health_state.
  final String healthState;

  /// Optional. Input only. The owner of this instance after creation. Format: `alias@example.com` Currently supports one owner only. If not specified, all of the service account users of your VM instance's service account can use the instance.
  final List<String> instanceOwners;

  /// Optional. Labels to apply to this instance. These can be later modified by the UpdateInstance method.
  final Map<String, String> labels;

  /// The name of this notebook instance. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`
  final String name;

  /// The proxy endpoint that is used to access the Jupyter notebook.
  final String proxyUri;

  /// The state of this instance.
  final String state;

  /// Instance update time.
  final String updateTime;

  /// The upgrade history of this instance.
  final List<UpgradeHistoryEntryResponseNotebooksV2> upgradeHistory;

  /// Creates a new [GetInstanceNotebooksV2Result].
  /// [createTime] Instance creation time.
  /// [creator] Email address of entity that sent original CreateInstance request.
  /// [disableProxyAccess] Optional. If true, the notebook instance will not register with the proxy.
  /// [gceSetup] Optional. Compute Engine setup for the notebook. Uses notebook-defined fields.
  /// [healthInfo] Additional information about instance health. Example: healthInfo": { "docker_proxy_agent_status": "1", "docker_status": "1", "jupyterlab_api_status": "-1", "jupyterlab_status": "-1", "updated": "2020-10-18 09:40:03.573409" }
  /// [healthState] Instance health_state.
  /// [instanceOwners] Optional. Input only. The owner of this instance after creation. Format: `alias@example.com` Currently supports one owner only. If not specified, all of the service account users of your VM instance's service account can use the instance.
  /// [labels] Optional. Labels to apply to this instance. These can be later modified by the UpdateInstance method.
  /// [name] The name of this notebook instance. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// [proxyUri] The proxy endpoint that is used to access the Jupyter notebook.
  /// [state] The state of this instance.
  /// [updateTime] Instance update time.
  /// [upgradeHistory] The upgrade history of this instance.
  GetInstanceNotebooksV2Result({
    required this.createTime,
    required this.creator,
    required this.disableProxyAccess,
    required this.gceSetup,
    required this.healthInfo,
    required this.healthState,
    required this.instanceOwners,
    required this.labels,
    required this.name,
    required this.proxyUri,
    required this.state,
    required this.updateTime,
    required this.upgradeHistory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'creator': creator,
      'disableProxyAccess': disableProxyAccess,
      'gceSetup': gceSetup.toMap(),
      'healthInfo': healthInfo,
      'healthState': healthState,
      'instanceOwners': instanceOwners,
      'labels': labels,
      'name': name,
      'proxyUri': proxyUri,
      'state': state,
      'updateTime': updateTime,
      'upgradeHistory':
          pulumi.Input.encodeList<
            UpgradeHistoryEntryResponseNotebooksV2,
            Map<String, dynamic>
          >(upgradeHistory, (value) => value.toMap()),
    };
  }

  factory GetInstanceNotebooksV2Result.fromMap(Map<String, dynamic> map) {
    return GetInstanceNotebooksV2Result(
      createTime: map['createTime'] as String,
      creator: map['creator'] as String,
      disableProxyAccess: map['disableProxyAccess'] as bool,
      gceSetup: GceSetupResponse.fromMap(
        (map['gceSetup'] as Map).cast<String, dynamic>(),
      ),
      healthInfo: (map['healthInfo'] as Map).cast<String, String>(),
      healthState: map['healthState'] as String,
      instanceOwners: (map['instanceOwners'] as List).cast<String>(),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      proxyUri: map['proxyUri'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      upgradeHistory:
          pulumi.Input.decodeList<UpgradeHistoryEntryResponseNotebooksV2>(
            map['upgradeHistory'],
            (value) => UpgradeHistoryEntryResponseNotebooksV2.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
