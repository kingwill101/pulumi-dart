import 'package:pulumi/pulumi.dart' hide Config;
import 'mirror_config_response.dart';
import 'repo_args.dart';

/// Creates a repo in the given project with the given name. If the named repository already exists, `CreateRepo` returns `ALREADY_EXISTS`.
class Repo extends CustomResource {
  /// How this repository mirrors a repository managed by another service. Read-only field.
  late final Output<MirrorConfigResponse> mirrorConfig;

  /// Resource name of the repository, of the form `projects//repos/`. The repo name may contain slashes. eg, `projects/myproject/repos/name/with/slash`
  late final Output<String> name;
  late final Output<String> project;

  /// How this repository publishes a change in the repository through Cloud Pub/Sub. Keyed by the topic names.
  late final Output<Map<String, String>> pubsubConfigs;

  /// The disk usage of the repo, in bytes. Read-only field. Size is only returned by GetRepo.
  late final Output<String> size;

  /// URL to clone the repository from Google Cloud Source Repositories. Read-only field.
  late final Output<String> url;

  Repo(
    String name, {
    RepoArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:sourcerepo/v1:Repo',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.mirrorConfig = registerOutput<MirrorConfigResponse>('mirrorConfig');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pubsubConfigs = registerOutput<Map<String, String>>('pubsubConfigs');
    this.size = registerOutput<String>('size');
    this.url = registerOutput<String>('url');
  }
}
