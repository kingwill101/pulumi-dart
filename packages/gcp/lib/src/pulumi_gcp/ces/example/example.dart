import 'package:pulumi/pulumi.dart' as pulumi;
import '../example_message/example_message.dart';
import 'example_args.dart';

/// An example represents a sample conversation between the user and the agent(s).
///
///
///
/// ## Example Usage
///
/// ### Ces Example Basic
///
///
///
///
/// ## Import
///
/// Example can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/apps/{{app}}/examples/{{name}}`
///
/// * `{{project}}/{{location}}/{{app}}/{{name}}`
///
/// * `{{location}}/{{app}}/{{name}}`
///
/// When using the `pulumi import` command, Example can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:ces/example:Example default projects/{{project}}/locations/{{location}}/apps/{{app}}/examples/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/example:Example default {{project}}/{{location}}/{{app}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/example:Example default {{location}}/{{app}}/{{name}}
/// ```
class Example extends pulumi.CustomResource {
  /// Resource ID segment making up resource `name`, defining the app the example belongs to. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> app;

  /// Timestamp when the example was created.
  late final pulumi.Output<String> createTime;

  /// Human-readable description of the example.
  late final pulumi.Output<String?> description;

  /// Display name of the example.
  late final pulumi.Output<String> displayName;

  /// The agent that initially handles the conversation. If not specified, the
  /// example represents a conversation that is handled by the root agent.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  late final pulumi.Output<String?> entryAgent;

  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> exampleId;

  /// The example may become invalid if referencing resources are deleted.
  /// Invalid examples will not be used as few-shot examples.
  late final pulumi.Output<bool> invalid;

  /// Resource ID segment making up resource `name`, defining what region the parent app is in. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// The collection of messages that make up the conversation.
  /// Structure is documented below.
  late final pulumi.Output<List<ExampleMessage>?> messages;

  /// Identifier. The unique identifier of the example.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/examples/{example}`
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Timestamp when the example was last updated.
  late final pulumi.Output<String> updateTime;

  Example(
    String name, {
    ExampleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/example:Example',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.app = registerOutput<String>('app');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.entryAgent = registerOutput<String?>('entryAgent');
    this.etag = registerOutput<String>('etag');
    this.exampleId = registerOutput<String>('exampleId');
    this.invalid = registerOutput<bool>('invalid');
    this.location = registerOutput<String>('location');
    this.messages = registerOutput<List<ExampleMessage>?>('messages');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
