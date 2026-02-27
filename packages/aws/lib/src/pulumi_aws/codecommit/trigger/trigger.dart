import 'package:pulumi/pulumi.dart';
import '../trigger_trigger/trigger_trigger.dart';
import 'trigger_args.dart';

/// Provides a CodeCommit Trigger Resource.
class Trigger extends CustomResource {
  /// System-generated unique identifier.
  late final Output<String> configurationId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name for the repository. This needs to be less than 100 characters.
  late final Output<String> repositoryName;

  /// The name of the trigger.
  late final Output<List<TriggerTrigger>> triggers;

  Trigger(
    String name, {
    TriggerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codecommit/trigger:Trigger',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.configurationId = registerOutput<String>('configurationId');
    this.region = registerOutput<String>('region');
    this.repositoryName = registerOutput<String>('repositoryName');
    this.triggers = registerOutput<List<TriggerTrigger>>('triggers');
  }
}
