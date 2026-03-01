// ignore_for_file: unused_element, unnecessary_cast

import 'repository_ref_definition.dart';

/// Parameters to reconcile to the GitRepository source kind type.
class GitRepositoryDefinition {
  /// Base64-encoded HTTPS certificate authority contents used to access git private git repositories over HTTPS
  final String? httpsCACert;
  /// Plaintext HTTPS username used to access private git repositories over HTTPS
  final String? httpsUser;
  /// Name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets.
  final String? localAuthRef;
  /// The source reference for the GitRepository object.
  final RepositoryRefDefinition? repositoryRef;
  /// Base64-encoded known_hosts value containing public SSH keys required to access private git repositories over SSH
  final String? sshKnownHosts;
  /// The interval at which to re-reconcile the cluster git repository source with the remote.
  final double? syncIntervalInSeconds;
  /// The maximum time to attempt to reconcile the cluster git repository source with the remote.
  final double? timeoutInSeconds;
  /// The URL to sync for the flux configuration git repository.
  final String? url;

  /// Creates a new [GitRepositoryDefinition].
  /// [httpsCACert] Base64-encoded HTTPS certificate authority contents used to access git private git repositories over HTTPS
  /// [httpsUser] Plaintext HTTPS username used to access private git repositories over HTTPS
  /// [localAuthRef] Name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets.
  /// [repositoryRef] The source reference for the GitRepository object.
  /// [sshKnownHosts] Base64-encoded known_hosts value containing public SSH keys required to access private git repositories over SSH
  /// [syncIntervalInSeconds] The interval at which to re-reconcile the cluster git repository source with the remote.
  /// [timeoutInSeconds] The maximum time to attempt to reconcile the cluster git repository source with the remote.
  /// [url] The URL to sync for the flux configuration git repository.
  GitRepositoryDefinition({
    this.httpsCACert,
    this.httpsUser,
    this.localAuthRef,
    this.repositoryRef,
    this.sshKnownHosts,
    this.syncIntervalInSeconds,
    this.timeoutInSeconds,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpsCACert': ?httpsCACert,
      'httpsUser': ?httpsUser,
      'localAuthRef': ?localAuthRef,
      'repositoryRef': ?repositoryRef == null ? null : repositoryRef!.toMap(),
      'sshKnownHosts': ?sshKnownHosts,
      'syncIntervalInSeconds': ?syncIntervalInSeconds,
      'timeoutInSeconds': ?timeoutInSeconds,
      'url': ?url,
    };
  }

  factory GitRepositoryDefinition.fromMap(Map<String, dynamic> map) {
    return GitRepositoryDefinition(
      httpsCACert: map['httpsCACert'] == null ? null : map['httpsCACert'] as String,
      httpsUser: map['httpsUser'] == null ? null : map['httpsUser'] as String,
      localAuthRef: map['localAuthRef'] == null ? null : map['localAuthRef'] as String,
      repositoryRef: map['repositoryRef'] == null ? null : RepositoryRefDefinition.fromMap((map['repositoryRef'] as Map).cast<String, dynamic>()),
      sshKnownHosts: map['sshKnownHosts'] == null ? null : map['sshKnownHosts'] as String,
      syncIntervalInSeconds: map['syncIntervalInSeconds'] == null ? null : map['syncIntervalInSeconds'] as double,
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : map['timeoutInSeconds'] as double,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

