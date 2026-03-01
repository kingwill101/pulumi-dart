// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_data_lineage_integration.dart';

/// Specifies the selection and configuration of software inside the environment.
class SoftwareConfigComposerV1beta1 {
  /// Optional. Apache Airflow configuration properties to override. Property keys contain the section and property names, separated by a hyphen, for example "core-dags_are_paused_at_creation". Section names must not contain hyphens ("-"), opening square brackets ("["), or closing square brackets ("]"). The property name must not be empty and must not contain an equals sign ("=") or semicolon (";"). Section and property names must not contain a period ("."). Apache Airflow configuration property names must be written in [snake_case](https://en.wikipedia.org/wiki/Snake_case). Property values can contain any character, and can be written in any lower/upper case format. Certain Apache Airflow configuration property values are [blocked](/composer/docs/concepts/airflow-configurations), and cannot be overridden.
  final Map<String, String>? airflowConfigOverrides;

  /// Optional. The configuration for Cloud Data Lineage integration.
  final CloudDataLineageIntegration? cloudDataLineageIntegration;

  /// Optional. Additional environment variables to provide to the Apache Airflow scheduler, worker, and webserver processes. Environment variable names must match the regular expression `a-zA-Z_*`. They cannot specify Apache Airflow software configuration overrides (they cannot match the regular expression `AIRFLOW__[A-Z0-9_]+__[A-Z0-9_]+`), and they cannot match any of the following reserved names: * `AIRFLOW_HOME` * `C_FORCE_ROOT` * `CONTAINER_NAME` * `DAGS_FOLDER` * `GCP_PROJECT` * `GCS_BUCKET` * `GKE_CLUSTER_NAME` * `SQL_DATABASE` * `SQL_INSTANCE` * `SQL_PASSWORD` * `SQL_PROJECT` * `SQL_REGION` * `SQL_USER`
  final Map<String, String>? envVariables;

  /// The version of the software running in the environment. This encapsulates both the version of Cloud Composer functionality and the version of Apache Airflow. It must match the regular expression `composer-([0-9]+(\.[0-9]+\.[0-9]+(-preview\.[0-9]+)?)?|latest)-airflow-([0-9]+(\.[0-9]+(\.[0-9]+)?)?)`. When used as input, the server also checks if the provided version is supported and denies the request for an unsupported version. The Cloud Composer portion of the image version is a full [semantic version](https://semver.org), or an alias in the form of major version number or `latest`. When an alias is provided, the server replaces it with the current Cloud Composer version that satisfies the alias. The Apache Airflow portion of the image version is a full semantic version that points to one of the supported Apache Airflow versions, or an alias in the form of only major or major.minor versions specified. When an alias is provided, the server replaces it with the latest Apache Airflow version that satisfies the alias and is supported in the given Cloud Composer version. In all cases, the resolved image version is stored in the same field. See also [version list](/composer/docs/concepts/versioning/composer-versions) and [versioning overview](/composer/docs/concepts/versioning/composer-versioning-overview).
  final String? imageVersion;

  /// Optional. Custom Python Package Index (PyPI) packages to be installed in the environment. Keys refer to the lowercase package name such as "numpy" and values are the lowercase extras and version specifier such as "==1.12.0", "[devel,gcp_api]", or "[devel]>=1.8.2, <1.9.2". To specify a package without pinning it to a version specifier, use the empty string as the value.
  final Map<String, String>? pypiPackages;

  /// Optional. The major version of Python used to run the Apache Airflow scheduler, worker, and webserver processes. Can be set to '2' or '3'. If not specified, the default is '3'. Cannot be updated. This field is only supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. Environments in newer versions always use Python major version 3.
  final String? pythonVersion;

  /// Optional. The number of schedulers for Airflow. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-2.*.*.
  final int? schedulerCount;

  /// Creates a new [SoftwareConfigComposerV1beta1].
  /// [airflowConfigOverrides] Optional. Apache Airflow configuration properties to override. Property keys contain the section and property names, separated by a hyphen, for example "core-dags_are_paused_at_creation". Section names must not contain hyphens ("-"), opening square brackets ("["), or closing square brackets ("]"). The property name must not be empty and must not contain an equals sign ("=") or semicolon (";"). Section and property names must not contain a period ("."). Apache Airflow configuration property names must be written in [snake_case](https://en.wikipedia.org/wiki/Snake_case). Property values can contain any character, and can be written in any lower/upper case format. Certain Apache Airflow configuration property values are [blocked](/composer/docs/concepts/airflow-configurations), and cannot be overridden.
  /// [cloudDataLineageIntegration] Optional. The configuration for Cloud Data Lineage integration.
  /// [envVariables] Optional. Additional environment variables to provide to the Apache Airflow scheduler, worker, and webserver processes. Environment variable names must match the regular expression `a-zA-Z_*`. They cannot specify Apache Airflow software configuration overrides (they cannot match the regular expression `AIRFLOW__[A-Z0-9_]+__[A-Z0-9_]+`), and they cannot match any of the following reserved names: * `AIRFLOW_HOME` * `C_FORCE_ROOT` * `CONTAINER_NAME` * `DAGS_FOLDER` * `GCP_PROJECT` * `GCS_BUCKET` * `GKE_CLUSTER_NAME` * `SQL_DATABASE` * `SQL_INSTANCE` * `SQL_PASSWORD` * `SQL_PROJECT` * `SQL_REGION` * `SQL_USER`
  /// [imageVersion] The version of the software running in the environment. This encapsulates both the version of Cloud Composer functionality and the version of Apache Airflow. It must match the regular expression `composer-([0-9]+(\.[0-9]+\.[0-9]+(-preview\.[0-9]+)?)?|latest)-airflow-([0-9]+(\.[0-9]+(\.[0-9]+)?)?)`. When used as input, the server also checks if the provided version is supported and denies the request for an unsupported version. The Cloud Composer portion of the image version is a full [semantic version](https://semver.org), or an alias in the form of major version number or `latest`. When an alias is provided, the server replaces it with the current Cloud Composer version that satisfies the alias. The Apache Airflow portion of the image version is a full semantic version that points to one of the supported Apache Airflow versions, or an alias in the form of only major or major.minor versions specified. When an alias is provided, the server replaces it with the latest Apache Airflow version that satisfies the alias and is supported in the given Cloud Composer version. In all cases, the resolved image version is stored in the same field. See also [version list](/composer/docs/concepts/versioning/composer-versions) and [versioning overview](/composer/docs/concepts/versioning/composer-versioning-overview).
  /// [pypiPackages] Optional. Custom Python Package Index (PyPI) packages to be installed in the environment. Keys refer to the lowercase package name such as "numpy" and values are the lowercase extras and version specifier such as "==1.12.0", "[devel,gcp_api]", or "[devel]>=1.8.2, <1.9.2". To specify a package without pinning it to a version specifier, use the empty string as the value.
  /// [pythonVersion] Optional. The major version of Python used to run the Apache Airflow scheduler, worker, and webserver processes. Can be set to '2' or '3'. If not specified, the default is '3'. Cannot be updated. This field is only supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. Environments in newer versions always use Python major version 3.
  /// [schedulerCount] Optional. The number of schedulers for Airflow. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-2.*.*.
  SoftwareConfigComposerV1beta1({
    this.airflowConfigOverrides,
    this.cloudDataLineageIntegration,
    this.envVariables,
    this.imageVersion,
    this.pypiPackages,
    this.pythonVersion,
    this.schedulerCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'airflowConfigOverrides': ?airflowConfigOverrides,
      'cloudDataLineageIntegration': ?cloudDataLineageIntegration == null
          ? null
          : cloudDataLineageIntegration!.toMap(),
      'envVariables': ?envVariables,
      'imageVersion': ?imageVersion,
      'pypiPackages': ?pypiPackages,
      'pythonVersion': ?pythonVersion,
      'schedulerCount': ?schedulerCount,
    };
  }

  factory SoftwareConfigComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return SoftwareConfigComposerV1beta1(
      airflowConfigOverrides: map['airflowConfigOverrides'] == null
          ? null
          : (map['airflowConfigOverrides'] as Map).cast<String, String>(),
      cloudDataLineageIntegration: map['cloudDataLineageIntegration'] == null
          ? null
          : CloudDataLineageIntegration.fromMap(
              (map['cloudDataLineageIntegration'] as Map)
                  .cast<String, dynamic>(),
            ),
      envVariables: map['envVariables'] == null
          ? null
          : (map['envVariables'] as Map).cast<String, String>(),
      imageVersion: map['imageVersion'] == null
          ? null
          : map['imageVersion'] as String,
      pypiPackages: map['pypiPackages'] == null
          ? null
          : (map['pypiPackages'] as Map).cast<String, String>(),
      pythonVersion: map['pythonVersion'] == null
          ? null
          : map['pythonVersion'] as String,
      schedulerCount: map['schedulerCount'] == null
          ? null
          : map['schedulerCount'] as int,
    );
  }
}
