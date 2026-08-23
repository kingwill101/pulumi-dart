import 'input.dart';
import 'output.dart';
import 'resource/custom_resource.dart';

/// Arguments for the built-in [Stash] resource.
class StashArgs {
  final Input<dynamic> input;

  const StashArgs({required this.input});
}

/// Stores an arbitrary value in Pulumi state and returns it unchanged.
class Stash extends CustomResource {
  late final Output<dynamic> input;
  late final Output<dynamic> output;

  Stash(String name, StashArgs args, {CustomResourceOptions? options})
    : super('pulumi:index:Stash', name, <String, Input<dynamic>>{
        'input': args.input,
      }, options ?? CustomResourceOptions()) {
    input = registerOutput<dynamic>('input');
    output = registerOutput<dynamic>('output');
  }
}
