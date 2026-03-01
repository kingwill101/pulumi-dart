import 'package:pulumi/src/output.dart';
import 'package:pulumi/src/resource/resource.dart';

Output<T> createOutput<T>(T value, bool isKnown, [bool isSecret = false]) {
  return Output<T>(
    Future.value(
      OutputData<T>(
        value: isKnown ? value : null,
        isKnown: isKnown,
        isSecret: isSecret,
        resources: {},
      ),
    ),
  );
}

Output<T> createOutputRetainingUnknown<T>(
  T value,
  bool isKnown, [
  bool isSecret = false,
]) {
  return Output<T>(
    Future.value(
      OutputData<T>(
        value: value,
        isKnown: isKnown,
        isSecret: isSecret,
        resources: {},
      ),
    ),
  );
}

Output<T> createOutputWithResources<T>(
  Iterable<Resource> resources,
  T value,
  bool isKnown, [
  bool isSecret = false,
]) {
  return Output<T>(
    Future.value(
      OutputData<T>(
        value: isKnown ? value : null,
        isKnown: isKnown,
        isSecret: isSecret,
        resources: resources.toSet(),
      ),
    ),
  );
}

Output<T> createOutputData<T>({
  required T? value,
  required bool isKnown,
  bool isSecret = false,
  Set<Resource> resources = const {},
}) {
  return Output<T>(
    Future.value(
      OutputData<T>(
        value: value,
        isKnown: isKnown,
        isSecret: isSecret,
        resources: resources,
      ),
    ),
  );
}
