import 'package:pulumi/pulumi.dart' as pulumi;
import '../trigger_trigger/trigger_trigger.dart';
import 'trigger_args.dart';

/// Provides a CodeCommit Trigger Resource.
class Trigger extends pulumi.CustomResource {
  /// System-generated unique identifier.
  late final pulumi.Output<String> configurationId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The name for the repository. This needs to be less than 100 characters.
  late final pulumi.Output<String> repositoryName;

  /// The name of the trigger.
  late final pulumi.Output<List<TriggerTrigger>> triggers;

  Trigger(
    String name, {
    TriggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codecommit/trigger:Trigger',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configurationId = registerOutput<String>('configurationId');
    this.region = registerOutput<String>('region');
    this.repositoryName = registerOutput<String>('repositoryName');
    this.triggers = registerOutput<List<TriggerTrigger>>('triggers');
  }
}
