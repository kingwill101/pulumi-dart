// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_ref_definition.dart';

/// Parameters to reconcile to the GitRepository source kind type.
class GitRepositoryDefinition {
  /// Base64-encoded HTTPS certificate authority contents used to access git private git repositories over HTTPS
  final pulumi.Input<String>? httpsCACert;
  /// Plaintext HTTPS username used to access private git repositories over HTTPS
  final pulumi.Input<String>? httpsUser;
  /// Name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets.
  final pulumi.Input<String>? localAuthRef;
  /// The source reference for the GitRepository object.
  final pulumi.Input<RepositoryRefDefinition>? repositoryRef;
  /// Base64-encoded known_hosts value containing public SSH keys required to access private git repositories over SSH
  final pulumi.Input<String>? sshKnownHosts;
  /// The interval at which to re-reconcile the cluster git repository source with the remote.
  final pulumi.Input<double>? syncIntervalInSeconds;
  /// The maximum time to attempt to reconcile the cluster git repository source with the remote.
  final pulumi.Input<double>? timeoutInSeconds;
  /// The URL to sync for the flux configuration git repository.
  final pulumi.Input<String>? url;

  /// Creates a new [GitRepositoryDefinition].
  /// [httpsCACert] Base64-encoded HTTPS certificate authority contents used to access git private git repositories over HTTPS
  /// [httpsUser] Plaintext HTTPS username used to access private git repositories over HTTPS
  /// [localAuthRef] Name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets.
  /// [repositoryRef] The source reference for the GitRepository object.
  /// [sshKnownHosts] Base64-encoded known_hosts value containing public SSH keys required to access private git repositories over SSH
  /// [syncIntervalInSeconds] The interval at which to re-reconcile the cluster git repository source with the remote.
  /// [timeoutInSeconds] The maximum time to attempt to reconcile the cluster git repository source with the remote.
  /// [url] The URL to sync for the flux configuration git repository.
  const GitRepositoryDefinition({
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
      'repositoryRef': ?pulumi.Input.mapOptionalInputValue<RepositoryRefDefinition, Map<String, dynamic>>(repositoryRef, (value) => value.toMap()),
      'sshKnownHosts': ?sshKnownHosts,
      'syncIntervalInSeconds': ?syncIntervalInSeconds,
      'timeoutInSeconds': ?timeoutInSeconds,
      'url': ?url,
    };
  }

  factory GitRepositoryDefinition.fromMap(Map<String, dynamic> map) {
    return GitRepositoryDefinition(
      httpsCACert: (() { final guardedValue = map['httpsCACert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpsUser: (() { final guardedValue = map['httpsUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localAuthRef: (() { final guardedValue = map['localAuthRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryRef: (() { final guardedValue = map['repositoryRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryRefDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sshKnownHosts: (() { final guardedValue = map['sshKnownHosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncIntervalInSeconds: (() { final guardedValue = map['syncIntervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      timeoutInSeconds: (() { final guardedValue = map['timeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
