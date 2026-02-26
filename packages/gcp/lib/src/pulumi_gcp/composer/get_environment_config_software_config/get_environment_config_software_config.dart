// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_environment_config_software_config_cloud_data_lineage_integration/get_environment_config_software_config_cloud_data_lineage_integration.dart';

class GetEnvironmentConfigSoftwareConfig {
  /// Apache Airflow configuration properties to override. Property keys contain the section and property names, separated by a hyphen, for example "core-dags_are_paused_at_creation". Section names must not contain hyphens ("-"), opening square brackets ("["), or closing square brackets ("]"). The property name must not be empty and cannot contain "=" or ";". Section and property names cannot contain characters: "." Apache Airflow configuration property names must be written in snake_case. Property values can contain any character, and can be written in any lower/upper case format. Certain Apache Airflow configuration property values are blacklisted, and cannot be overridden.
  final Map<String, String> airflowConfigOverrides;

  /// The configuration for Cloud Data Lineage integration. Supported for Cloud Composer environments in versions composer-2.1.2-airflow-*.*.* and newer
  final List<GetEnvironmentConfigSoftwareConfigCloudDataLineageIntegration>
      cloudDataLineageIntegrations;

  /// Additional environment variables to provide to the Apache Airflow scheduler, worker, and webserver processes. Environment variable names must match the regular expression [a-zA-Z_][a-zA-Z0-9_]*. They cannot specify Apache Airflow software configuration overrides (they cannot match the regular expression AIRFLOW__[A-Z0-9_]+__[A-Z0-9_]+), and they cannot match any of the following reserved names: AIRFLOW_HOME C_FORCE_ROOT CONTAINER_NAME DAGS_FOLDER GCP_PROJECT GCS_BUCKET GKE_CLUSTER_NAME SQL_DATABASE SQL_INSTANCE SQL_PASSWORD SQL_PROJECT SQL_REGION SQL_USER.
  final Map<String, String> envVariables;

  /// The version of the software running in the environment. This encapsulates both the version of Cloud Composer functionality and the version of Apache Airflow. It must match the regular expression composer-([0-9]+(\.[0-9]+\.[0-9]+(-preview\.[0-9]+)?)?|latest)-airflow-([0-9]+(\.[0-9]+(\.[0-9]+)?)?). The Cloud Composer portion of the image version is a full semantic version, or an alias in the form of major version number or 'latest'. The Apache Airflow portion of the image version is a full semantic version that points to one of the supported Apache Airflow versions, or an alias in the form of only major or major.minor versions specified. See documentation for more details and version list.
  final String imageVersion;

  /// Custom Python Package Index (PyPI) packages to be installed in the environment. Keys refer to the lowercase package name (e.g. "numpy"). Values are the lowercase extras and version specifier (e.g. "==1.12.0", "[devel,gcp_api]", "[devel]>=1.8.2, <1.9.2"). To specify a package without pinning it to a version specifier, use the empty string as the value.
  final Map<String, String> pypiPackages;

  /// The major version of Python used to run the Apache Airflow scheduler, worker, and webserver processes. Can be set to '2' or '3'. If not specified, the default is '2'. Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. Environments in newer versions always use Python major version 3.
  final String pythonVersion;

  /// The number of schedulers for Airflow. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-2.*.*.
  final int schedulerCount;

  /// Should be either 'ENABLED' or 'DISABLED'. Defaults to 'ENABLED'. Used in Composer 3.
  final String webServerPluginsMode;

  GetEnvironmentConfigSoftwareConfig({
    required this.airflowConfigOverrides,
    required this.cloudDataLineageIntegrations,
    required this.envVariables,
    required this.imageVersion,
    required this.pypiPackages,
    required this.pythonVersion,
    required this.schedulerCount,
    required this.webServerPluginsMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['airflowConfigOverrides'] = airflowConfigOverrides;
    map['cloudDataLineageIntegrations'] = Input.encodeList<
            GetEnvironmentConfigSoftwareConfigCloudDataLineageIntegration,
            Map<String, dynamic>>(
        cloudDataLineageIntegrations, (value) => value.toMap());
    map['envVariables'] = envVariables;
    map['imageVersion'] = imageVersion;
    map['pypiPackages'] = pypiPackages;
    map['pythonVersion'] = pythonVersion;
    map['schedulerCount'] = schedulerCount;
    map['webServerPluginsMode'] = webServerPluginsMode;
    return map;
  }

  factory GetEnvironmentConfigSoftwareConfig.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigSoftwareConfig(
      airflowConfigOverrides:
          (map['airflowConfigOverrides'] as Map).cast<String, String>(),
      cloudDataLineageIntegrations: Input.decodeList<
              GetEnvironmentConfigSoftwareConfigCloudDataLineageIntegration>(
          map['cloudDataLineageIntegrations'],
          (value) =>
              GetEnvironmentConfigSoftwareConfigCloudDataLineageIntegration
                  .fromMap((value as Map).cast<String, dynamic>())),
      envVariables: (map['envVariables'] as Map).cast<String, String>(),
      imageVersion: map['imageVersion'] as String,
      pypiPackages: (map['pypiPackages'] as Map).cast<String, String>(),
      pythonVersion: map['pythonVersion'] as String,
      schedulerCount: map['schedulerCount'] as int,
      webServerPluginsMode: map['webServerPluginsMode'] as String,
    );
  }
}
