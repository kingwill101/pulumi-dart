// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../repository_iam_binding_condition/repository_iam_binding_condition.dart';

/// The set of arguments for RepositoryIamBinding.
class RepositoryIamBindingArgs {
  final Input<RepositoryIamBindingCondition>? condition;

  /// The name of the repository's location. In addition to specific regions,
  /// special values for multi-region locations are <span pulumi-lang-nodejs="`asia`" pulumi-lang-dotnet="`Asia`" pulumi-lang-go="`asia`" pulumi-lang-python="`asia`" pulumi-lang-yaml="`asia`" pulumi-lang-java="`asia`">`asia`</span>, <span pulumi-lang-nodejs="`europe`" pulumi-lang-dotnet="`Europe`" pulumi-lang-go="`europe`" pulumi-lang-python="`europe`" pulumi-lang-yaml="`europe`" pulumi-lang-java="`europe`">`europe`</span>, and <span pulumi-lang-nodejs="`us`" pulumi-lang-dotnet="`Us`" pulumi-lang-go="`us`" pulumi-lang-python="`us`" pulumi-lang-yaml="`us`" pulumi-lang-java="`us`">`us`</span>.
  /// See [here](https://cloud.google.com/artifact-registry/docs/repositories/repo-locations),
  /// or use the<span pulumi-lang-nodejs="
  /// gcp.artifactregistry.getLocations
  /// " pulumi-lang-dotnet="
  /// gcp.artifactregistry.getLocations
  /// " pulumi-lang-go="
  /// artifactregistry.getLocations
  /// " pulumi-lang-python="
  /// artifactregistry_get_locations
  /// " pulumi-lang-yaml="
  /// gcp.artifactregistry.getLocations
  /// " pulumi-lang-java="
  /// gcp.artifactregistry.getLocations
  /// ">
  /// gcp.artifactregistry.getLocations
  /// </span>data source for possible values. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final Input<String>? location;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  /// * **Federated identities**: One or more federated identities in a workload or workforce identity pool, workload running on GKE, etc. Refer to the [Principal identifiers documentation](https://cloud.google.com/iam/docs/principal-identifiers#allow) for examples of targets and valid configuration. For example, "principal://iam.googleapis.com/locations/global/workforcePools/example-contractors/subject/joe@example.com"
  final Input<List<String>> members;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> repository;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.artifactregistry.RepositoryIamBinding`" pulumi-lang-dotnet="`gcp.artifactregistry.RepositoryIamBinding`" pulumi-lang-go="`artifactregistry.RepositoryIamBinding`" pulumi-lang-python="`artifactregistry.RepositoryIamBinding`" pulumi-lang-yaml="`gcp.artifactregistry.RepositoryIamBinding`" pulumi-lang-java="`gcp.artifactregistry.RepositoryIamBinding`">`gcp.artifactregistry.RepositoryIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final Input<String> role;

  RepositoryIamBindingArgs({
    this.condition,
    this.location,
    required this.members,
    this.project,
    required this.repository,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<
          RepositoryIamBindingCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['members'] = members;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repository'] = repository;
    map['role'] = role;
    return map;
  }

  factory RepositoryIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryIamBindingArgs(
      condition: Input.asOptionalInput<RepositoryIamBindingCondition>(
          map['condition']),
      location: Input.asOptionalInput<String>(map['location']),
      members: Input.asInput<List<String>>(map['members']),
      project: Input.asOptionalInput<String>(map['project']),
      repository: Input.asInput<String>(map['repository']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
