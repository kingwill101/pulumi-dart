// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fargate_credential_spec_config.dart';

class FargateCredentialSpec {
  /// ARN of the general-purpose S3 bucket containing the CredSpec.
  ///
  /// The bucket remains user-managed. If its encryption configuration is created in the same update,
  /// make this input depend on that configuration, for example with `pulumi.all([bucket.arn,
  /// encryption.id]).apply(([arn]) =&gt; arn)` in TypeScript. Component-wide `dependsOn` is not
  /// forwarded to lookups.
  final pulumi.Input<String> bucketArn;
  /// Configuration used to generate a domainless CredSpec JSON object in the supplied bucket.
  ///
  /// The object uses the bucket's default encryption settings and a Pulumi auto-named key. Changing
  /// the configuration replaces the object with a new key and registers a new task definition
  /// revision. Removing this configuration deletes the component-managed object, not the bucket or
  /// secret.
  ///
  /// Default - Read the existing object identified by `key`.
  final pulumi.Input<FargateCredentialSpecConfig?>? config;
  /// Key of an existing CredSpec object. The component reads the JSON to discover its credentials
  /// secret and reads the object's actual KMS key, which can differ from the bucket default.
  ///
  /// The object remains user-managed. Pass the object's `key` Output so the lookup waits for its
  /// creation. If additional readiness is required, compose it into this input rather than using
  /// component-wide `dependsOn`. Changes to its contents are discovered on the next update.
  ///
  /// Default - Create an object from `config`.
  final pulumi.Input<String?>? key;

  /// Creates a new [FargateCredentialSpec].
  /// [bucketArn] ARN of the general-purpose S3 bucket containing the CredSpec.
  /// [config] Configuration used to generate a domainless CredSpec JSON object in the supplied bucket.
  /// [key] Key of an existing CredSpec object. The component reads the JSON to discover its credentials
  const FargateCredentialSpec({
    required this.bucketArn,
    this.config,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketArn': bucketArn,
      'config': ?pulumi.Input.mapOptionalInputValue<FargateCredentialSpecConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'key': ?key,
    };
  }

  factory FargateCredentialSpec.fromMap(Map<String, dynamic> map) {
    return FargateCredentialSpec(
      bucketArn: pulumi.Input.fromValue(map['bucketArn'] as String),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FargateCredentialSpecConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
